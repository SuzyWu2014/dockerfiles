FROM base-api-image:latest
MAINTAINER "Shujin Wu"
LABEL name="Locations api"

RUN git clone https://github.com/osu-mist/locations-api.git -b non-mysql-db-dependency
WORKDIR /home/api/locations-api/

RUN mv ../bin/ .

ENV GRADLE_HOME /root/.sdkman/candidates/gradle/current
ENV PATH $PATH:$GRADLE_HOME/bin

RUN gradle shadowJar
RUN chown api ../locations-api

EXPOSE 8080 8081
USER api

CMD java -jar $(ls build/libs/locations-api-*-all.jar | sort | tail -1) server configuration.yaml

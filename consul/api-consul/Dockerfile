FROM base-api-image:latest
MAINTAINER "Shujin Wu"
LABEL name="Locations Frontend api"

ADD ./config /config/
RUN git clone https://github.com/osu-mist/locations-frontend-api.git
WORKDIR /home/api/locations-frontend-api
ADD entry.sh /home/api/locations-frontend-api/entry.sh
RUN mv ../bin/ .

ENV GRADLE_HOME /root/.sdkman/candidates/gradle/current
ENV PATH $PATH:$GRADLE_HOME/bin

RUN gradle shadowJar
RUN chown -R api /home
RUN chown api /config
RUN chown api /ui

EXPOSE 8088 8089
EXPOSE 8300 8301 8301/udp 8302 8302/udp 8400 8500 8600 8600/udp
ENV DNS_RESOLVES consul
ENV DNS_PORT 8600

USER api

ENTRYPOINT ["/bin/bash", "entry.sh"]

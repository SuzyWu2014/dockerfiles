FROM centos:6.7
MAINTAINER "Shujin Wu"
LABEL name="base image for api deployment"

COPY config /home/config
COPY env-setup.sh /home/env-setup.sh
RUN /bin/bash /home/env-setup.sh

RUN groupadd api && useradd -g api api -s /bin/bash -d /home/api
WORKDIR /home/api


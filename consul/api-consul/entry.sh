#!/bin/bash
set -e

java -jar $(ls build/libs/locations-frontend-*-all.jar | sort | tail -1) \
    server configuration.yaml & \
    /usr/local/bin/consul agent -config-dir=/config -join $1

exec "$@"

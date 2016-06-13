#!/bin/sh
source config.sh
source stop.sh

docker rm ${UNISON_CONTAINER_NAME}
docker rm ${EMBER_CONTAINER_NAME}

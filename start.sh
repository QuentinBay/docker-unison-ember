#!/bin/sh
source config.sh

docker start ${UNISON_CONTAINER_NAME}
docker start ${EMBER_CONTAINER_NAME}
docker logs -f ${EMBER_CONTAINER_NAME}

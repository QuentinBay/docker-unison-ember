#!/bin/sh
source config.sh

docker stop ${UNISON_CONTAINER_NAME}
docker stop ${EMBER_CONTAINER_NAME}

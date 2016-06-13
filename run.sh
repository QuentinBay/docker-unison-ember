#!/bin/sh
source config.sh

source rm.sh

docker volume create --name ${VOLUME_HOST_NAME}

docker run -d --name ${UNISON_CONTAINER_NAME} -e TERM=xterm -v ${SRC_HOST_DIR}:/media/sf_virtual_app -v ${VOLUME_HOST_NAME}:/DATA/app --privileged=true ${UNISON_IMAGE_NAME}
docker run -d --name ${EMBER_CONTAINER_NAME} -p 4200:4200 -v ${VOLUME_HOST_NAME}:/DATA/app --privileged=true ${EMBER_IMAGE_NAME}
docker logs -f ${EMBER_CONTAINER_NAME}

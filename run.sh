#!/usr/bin/env bash

IMAGE_NAME=wso2-db
CONTAINER_NAME=wso2-db

case "$1" in
    rebuild|build)
        echo rebuilding machine
        eval `docker-machine env dev` && \
            docker stop ${CONTAINER_NAME} ; \
            docker rm ${CONTAINER_NAME} ; \
            docker build --rm=true --tag ${IMAGE_NAME} ./ && \
            docker run --name ${CONTAINER_NAME} -P ${IMAGE_NAME}
        ;;
    *)
        echo restarting machine
        eval `docker-machine env dev` && \
            docker stop ${CONTAINER_NAME} ; \
            ( docker start ${CONTAINER_NAME} || docker run --name ${CONTAINER_NAME} -P ${IMAGE_NAME} )
esac

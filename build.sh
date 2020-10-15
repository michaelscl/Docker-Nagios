#!/bin/bash
set -e

DOCKER_RUN_IMAGE=nagios4

#sudo docker stop ${DOCKER_RUN_IMAGE}
#sudo docker rm ${DOCKER_RUN_IMAGE}

sudo docker build -t "${DOCKER_RUN_IMAGE}"  . 
#--no-cache



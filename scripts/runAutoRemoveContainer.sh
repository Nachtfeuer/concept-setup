#!/bin/bash
DOCKER_IMAGE=${DOCKER_IMAGE:=ubuntu:latest}
docker run --rm=true -v $PWD:/docker -it "${DOCKER_IMAGE}" bash

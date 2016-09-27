#!/bin/bash
PROMPT="$(basename $0) :: "
DOCKER_IMAGE=ubuntu:latest
NAME=${NAME:=dev}
if [ $# -eq 0 ]; then
    echo "${PROMPT}Pulling Docker image ${DOCKER_IMAGE} ..."
    docker pull ${DOCKER_IMAGE} > /dev/null
    echo "${PROMPT}Create container with name \"${NAME}\""
    docker create --name=${NAME} -v $PWD:/docker -it ${DOCKER_IMAGE} bash
    echo "${PROMPT}Start container"
    docker start ${NAME}
    echo "${PROMPT}Init container ..."
    docker exec -it ${NAME} /docker/createUbuntuContainer.sh INIT
else
    case $1 in
        INIT)
        echo "${PROMPT}Updating package sources ..."
        apt-get -y update > /dev/null
        echo "${PROMPT}Install required packages for easy_install+Ansible ..."
        apt-get -y install python-certifi python-setuptools libssl-dev python-dev gcc > /dev/null
        easy_install pip
        pip install ansible
        ansible --version
        ;;
    esac
fi

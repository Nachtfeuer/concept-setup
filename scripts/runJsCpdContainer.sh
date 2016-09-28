#!/bin/bash
# defaults
JSCPD_PATH=${JSCPD_PATH:=$PWD}
LANGUAGES=clike
LIMIT=50
MIN_LINES=5

if [ "$#" -eq 0 ]; then
    docker run --rm=true \
            -e "LANGUAGES=${LANGUAGE}" \
            -e "LIMIT=${LIMIT}" \
            -e "MIN_LINES=${MIN_LINES}" \
            -v "$PWD":/docker \
            -v "$JSCPD_PATH":/jscpd-path \
            ubuntu:latest \
            /docker/runJsCpdContainer.sh INIT
else
    case $1 in
        INIT)
            apt-get update
            apt-get install -y npm nodejs
            npm install -g jscpd
            ln -s /usr/bin/nodejs /usr/bin/node
            jscpd -v
            "$0" RUN
        ;;
        RUN)
            jscpd --path=/jscpd-path --blame --languages=${LANGUAGES} \
                  --min-lines=${MIN_LINES} --limit=${LIMIT}
        ;;
    esac
fi

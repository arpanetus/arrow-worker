#!/bin/sh

# first arg is TEMP_DIR env, where temp folder will be.
# TEMP_DIR must have chmod 777
# TEMP_DIR={full path to temp exclude temp}/  example /Users/ruslanjan/WebstormProjects/Arrow/API
# bellow full example
docker run -it --rm -p 8080:8080 -e "TEMP_DIR=/Users/ruslanjan/PycharmProjects/arrow-judge" -v /Users/ruslanjan/PycharmProjects/arrow-judge/temp:/app/temp -v /var/run/docker.sock:/var/run/docker.sock --rm -it arrow

#docker run -p 8080:8080 -e TEMP_DIR=${1} -v ${1}/temp:/app/API/temp -v /var/run/docker.sock:/var/run/docker.sock --rm -it arrow

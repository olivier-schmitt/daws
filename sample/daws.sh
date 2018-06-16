#!/usr/bin/env bash
echo "Entering Docker AWS CLI box, aka daws"
echo "Mount directory $1 in the container (need absolute path)"

docker run \
    -it --rm -v $1:/home/aws/work  \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    quay.io/olivier_schmitt/daws:latest \
    /bin/bash



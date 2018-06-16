#!/usr/bin/env bash
echo "Entering Docker AWS CLI box, aka daws"
docker run \
    -it --rm -v ${PWD}:/home/aws \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    quay.io/olivier_schmitt/daws:last \
    /bin/bash



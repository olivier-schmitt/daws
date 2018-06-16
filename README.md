# daws

[![Travis CI](https://travis-ci.org/olivier-schmitt/daws.svg?branch=master)](https://travis-ci.org/olivier-schmitt/daws)
[![Docker Repository on Quay](https://travis-ci.org/olivier-schmitt/status "Docker Repository on Quay")](https://quay.io/repository/olivier_schmitt/daws)


daws is Docker image which embeds the AWS CLI.

It's based on Ubuntu bionic and the last version of AWS CLI.

The Python ecosystem can be quite difficult to leverage, it never works properly on my MacOS.

The following command runs a Bash inside a container:
```shell
docker run \
    -it --rm -v ${PWD}:/home/aws \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    quay.io/olivier_schmitt/daws:last \
    /bin/bash
``` 

Then execute aws CLI commands inside from inside the container.
 

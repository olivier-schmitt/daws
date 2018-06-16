# daws

[![Travis CI](https://travis-ci.org/olivier-schmitt/daws.svg?branch=master)](https://travis-ci.org/olivier-schmitt/daws)
[![Docker Repository on Quay](https://quay.io/repository/olivier_schmitt/daws/status "Docker Repository on Quay")](https://quay.io/repository/olivier_schmitt/daws)


daws is Docker image which embeds the AWS CLI.

It's based on Ubuntu Bionic and the last version of AWS CLI.

The Python ecosystem can be quite difficult to leverage, it never works properly on my MacOS.

The following command runs a Bash inside a container:

```shell
docker run \
    -it --rm --name daws -v ${HOME}/cf-templates:/home/aws/work \
    -e AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION} \
    -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
    -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
    quay.io/olivier_schmitt/daws:latest \
    /bin/bash
``` 

Then execute aws CLI commands inside from inside the container.
 
If you want to keep the container alive don't use --rm option.

Then :

```shell
docker run --it daws /bin/bash 
``` 

Be VERY CAREFUL WITH ENV VARIABLES : they are saved with the container and could be used by an attacker.
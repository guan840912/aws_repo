#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 129729052534 --region ap-northeast-1)

if [ `docker images | grep cc104_web_student09 | wc -l`  = 1 ]
then
        docker rmi cc104_web_student09
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/cc104_web_student09:latest
else
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/cc104_web_student09:latest
fi

#!/bin/bash

FILE_NAME=docker_image_tomcat_8.5.46
IMAGE_VERSION=20190930
IMAGE_NAME=weixiaozheqingfu/$FILE_NAME:$IMAGE_VERSION

docker rm $FILE_NAME
docker run --name $FILE_NAME -p 8080:8080 -d --add-host disconf.systoon.com:172.28.18.48 $IMAGE_NAME 


# 参考
# docker run -d -p 8021:8081 -p 8766:8766 --add-host disconf.systoon.com:172.28.18.48 reg1.syswin.com/phenix/org-contact:20190709044300

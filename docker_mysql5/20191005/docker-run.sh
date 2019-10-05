#!/bin/bash

FILE_NAME=docker_image_mysql_5.7.27
IMAGE_VERSION=20191005
IMAGE_NAME=weixiaozheqingfu/$FILE_NAME:$IMAGE_VERSION

docker rm $FILE_NAME
docker run --name $FILE_NAME -p 3306:3306 -d -e MYSQL_ROOT_PASSWORD=root $IMAGE_NAME 

# 参考
# docker run -d -p 8021:8081 -p 8766:8766 --add-host disconf.systoon.com:172.28.18.48 reg1.syswin.com/phenix/org-contact:20190709044300

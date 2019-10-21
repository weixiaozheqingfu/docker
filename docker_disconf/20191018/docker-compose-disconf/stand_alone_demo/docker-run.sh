﻿#!/bin/bash

WAR_NAME=stand_alone_demo
#需要修改
IMAGE_VERSION=20191018
IMAGE_NAME=weixiaozheqingfu/$WAR_NAME:$IMAGE_VERSION

docker rm $WAR_NAME
docker run --name $WAR_NAME -p 8080:8080 -d --add-host disconf.systoon.com:172.28.18.48 $IMAGE_NAME 



# 参考
# docker run -d -p 8021:8081 -p 8766:8766 --add-host disconf.systoon.com:172.28.18.48 reg1.syswin.com/phenix/org-contact:20190709044300
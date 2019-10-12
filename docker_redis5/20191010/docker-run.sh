#!/bin/bash

FILE_NAME=docker_image_redis_5.0.4
IMAGE_VERSION=20191010
IMAGE_NAME=weixiaozheqingfu/$FILE_NAME:$IMAGE_VERSION

docker rm $FILE_NAME

docker run -p 6378:6379 --name redis01 -v /root/limengjun/data:/data -d $IMAGE_NAME redis-server /etc/redis/redis.conf


# 参考
# docker run -d -p 8021:8081 -p 8766:8766 --add-host disconf.systoon.com:172.28.18.48 reg1.syswin.com/phenix/org-contact:20190709044300
# docker run -p 6378:6379 --name redis01 -v /root/limengjun/redis.conf:/etc/redis/redis.conf -v /root/limengjun/data:/data -d redis:5.0.4 redis-server /etc/redis/redis.conf --appendonly yes
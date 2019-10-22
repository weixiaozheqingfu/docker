#!/bin/bash

WAR_NAME=org-crm

IMAGE_VERSION=$WAR_NAME:20191022

echo $IMAGE_VERSION

docker build -t $IMAGE_VERSION ./

sleep 4s

docker tag $IMAGE_VERSION  weixiaozheqingfu/$IMAGE_VERSION

sleep 4s

# docker push  weixiaozheqingfu/$IMAGE_VERSION

echo "创建镜像完成"
echo 镜像路径：weixiaozheqingfu/$IMAGE_VERSION

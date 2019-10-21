#!/bin/bash
IMAGE_NAME=docker_image_nginx_1.17.2:20191018

echo $IMAGE_NAME

docker build -t $IMAGE_NAME ./

sleep 6s

docker tag $IMAGE_NAME  weixiaozheqingfu/$IMAGE_NAME

sleep 6s

# docker push  weixiaozheqingfu/$IMAGE_NAME

echo "创建镜像完成"
echo 镜像路径：weixiaozheqingfu/$IMAGE_NAME

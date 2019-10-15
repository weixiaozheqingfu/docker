#!/bin/bash

# -f, --file FILE 使用特定的 compose 模板文件，默认为 docker-compose.yml。
# -p, --project-name NAME 指定项目名称，默认使用目录名称。并且会默认创建以该名称_default的自定义网络作为默认的项目桥接网络。本例中就是zookeeper_cluster_default网络。
# 关于网络的事情，我们当然可以自定义网络，然后在docker-compose.yml指定使用哪个桥接网络。看需要。其中自定义网路的命令也可以放在本文件中。

docker-compose --project-name zookeeper_test -f ./docker-compose.yml up  -d
# Docker file for rabbitmq single or cluster from weixiaozheqingfu 
# VERSION rabbitmq-server-3.7.5.rc.1-1.el7.noarch.rpm   erlang-19.3.6.5-1.el7.centos.x86_64.rpm
# Author: weixiaozheqingfu

#基础镜像
FROM centos:7.6.1810

#作者
MAINTAINER weixiaozheqingfu <weixiaozheqingfu@gmail.com>

#定义时区参数
ENV TZ=Asia/Shanghai

#设置时区
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone

#设置编码为中文
RUN yum -y install kde-l10n-Chinese glibc-common

RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

ENV LC_ALL zh_CN.utf8 

#安装wget工具
RUN yum install -y wget unzip tar

#安装erlang
RUN rpm -Uvh https://github.com/rabbitmq/erlang-rpm/releases/download/v19.3.6.5/erlang-19.3.6.5-1.el7.centos.x86_64.rpm

RUN yum install -y erlang

#安装rabbitmq
RUN rpm --import http://www.rabbitmq.com/rabbitmq-signing-key-public.asc

RUN yum install -y https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.7.5-rc.1/rabbitmq-server-3.7.5.rc.1-1.el7.noarch.rpm

RUN /usr/sbin/rabbitmq-plugins list <<<'y'

#安装常用插件
RUN /usr/sbin/rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_stomp rabbitmq_management  rabbitmq_management_agent rabbitmq_federation rabbitmq_federation_management <<<'y'

#CMD /usr/sbin/rabbitmq-server

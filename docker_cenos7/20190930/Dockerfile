FROM centos:7.6.1810
MAINTAINER limengjun
ENV REFRESHED_AT 2019-09-30 16:12

# 安装zip和unzip命令
RUN yum install -y zip unzip

# 解决docker启动容器后时间不准确问题
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo 'Asia/Shanghai' >/etc/timezone
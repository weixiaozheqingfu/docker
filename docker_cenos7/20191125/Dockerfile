FROM centos:7.6.1810
MAINTAINER limengjun
ENV REFRESHED_AT 2019-11-25 19:31

#设置编码为中文
RUN yum -y install kde-l10n-Chinese glibc-common

RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

ENV LC_ALL zh_CN.utf8


# 安装zip和unzip命令
RUN yum install -y zip unzip

# 解决docker启动容器后时间不准确问题
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
&& echo 'Asia/Shanghai' >/etc/timezone
FROM weixiaozheqingfu/docker_image_centos_7.6.1810:20190930
MAINTAINER limengjun
ENV REFRESHED_AT 2019-09-30 16:33

ADD jdk-8u212-linux-x64.tar.gz /usr/java/

ENV JAVA_HOME /usr/java/jdk1.8.0_212
ENV CLASSPATH $JAVA_HOME/lib;$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin
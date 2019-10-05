FROM centos:7.6.1810
MAINTAINER limengjun
ENV REFRESHED_AT 2019-05-08 10:20

ADD jdk-8u212-linux-x64.tar.gz /usr/java/

ENV JAVA_HOME /usr/java/jdk1.8.0_212
ENV CLASSPATH $JAVA_HOME/lib;$JAVA_HOME/jre/lib
ENV PATH $PATH:$JAVA_HOME/bin
FROM weixiaozheqingfu/docker_image_jdk8:20190930

MAINTAINER limengjun
ENV REFRESHED_AT 2019-10-18 11:01

ADD apache-tomcat-8.5.46.tar.gz /usr/local/
RUN mv /usr/local/apache-tomcat-8.5.46 /usr/local/tomcat

ENV CATALINA_HOME /usr/local/tomcat
ENV CATALINA_BASE $CATALINA_HOME
ENV PATH $PATH:$CATALINA_HOME/lib:$CATALINA_HOME/bin

#暴露端口8080
EXPOSE 8080

#启动时运行tomcat
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]

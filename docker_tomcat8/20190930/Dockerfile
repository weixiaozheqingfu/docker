FROM weixiaozheqingfu/docker_image_jdk8:20190930

MAINTAINER limengjun
ENV REFRESHED_AT 2010-09-30 10:19

ADD apache-tomcat-8.5.46.tar.gz /usr/tomcat/

ENV CATALINA_HOME /usr/tomcat/apache-tomcat-8.5.46
ENV CATALINA_BASE $CATALINA_HOME
ENV PATH $PATH:$CATALINA_HOME/lib:$CATALINA_HOME/bin

#暴露端口8080
EXPOSE 8080

#启动时运行tomcat
CMD ["/usr/tomcat/apache-tomcat-8.5.46/bin/catalina.sh", "run"]

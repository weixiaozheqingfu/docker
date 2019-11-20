FROM weixiaozheqingfu/elk-filebeat-base-war:20191119

ENV WAR_NAME spring-boot-mybatis-1.0-SNAPSHOT.war

# RUN yum install -y zip unzip
RUN rm -rf /usr/tomcat/apache-tomcat-8.5.46/webapps/
RUN mkdir -p /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/
ADD ./$WAR_NAME /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/
RUN unzip /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/$WAR_NAME -d /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/


# RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
# && echo 'Asia/Shanghai' >/etc/timezone

ENTRYPOINT ["sh","/jar/filebeat-springboot-entrypoint.sh"]




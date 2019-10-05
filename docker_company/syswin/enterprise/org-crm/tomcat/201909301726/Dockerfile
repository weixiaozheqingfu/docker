FROM weixiaozheqingfu/docker_image_tomcat_8.5.46:20190930

ENV WAR_NAME org-crm.war

# RUN yum install -y zip unzip
RUN rm -rf /usr/tomcat/apache-tomcat-8.5.46/webapps/
RUN mkdir -p /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/
ADD ./$WAR_NAME /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/
RUN unzip /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/$WAR_NAME -d /usr/tomcat/apache-tomcat-8.5.46/webapps/ROOT/


# RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
# && echo 'Asia/Shanghai' >/etc/timezone


CMD ["/usr/tomcat/apache-tomcat-8.5.46/bin/catalina.sh", "run"]




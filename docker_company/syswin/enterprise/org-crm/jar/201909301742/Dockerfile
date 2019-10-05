FROM docker_image_jdk8:20190930

RUN mkdir -p /jar

ADD ./org-crm/libs /jar/libs
ADD ./org-crm/org-crm.jar /jar/org-crm.jar
ADD ./startWithContainer.sh /jar/startWithContainer.sh


RUN chmod 700 /jar/startWithContainer.sh

ENTRYPOINT ["sh","/jar/startWithContainer.sh"]




FROM weixiaozheqingfu/jdk8:20191126

RUN mkdir -p /jar

ADD ./spring-boot-rabbitmq-producer-1.0-SNAPSHOT.jar /jar/spring-boot-rabbitmq-producer-1.0-SNAPSHOT.jar
ADD ./startWithContainer.sh /jar/startWithContainer.sh


RUN chmod 700 /jar/startWithContainer.sh

ENTRYPOINT ["sh","/jar/startWithContainer.sh"]




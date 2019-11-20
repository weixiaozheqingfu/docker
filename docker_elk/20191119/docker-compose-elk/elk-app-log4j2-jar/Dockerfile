FROM weixiaozheqingfu/elk-filebeat-base-jar:20191119

RUN mkdir -p /jar

ADD ./spring-boot-aop-log4j2/libs /jar/libs
ADD ./spring-boot-aop-log4j2/spring-boot-aop-log4j2-1.0-SNAPSHOT.jar /jar/spring-boot-aop-log4j2-1.0-SNAPSHOT.jar


ENTRYPOINT ["sh","/jar/filebeat-springboot-entrypoint.sh","/jar/spring-boot-aop-log4j2-1.0-SNAPSHOT.jar"]



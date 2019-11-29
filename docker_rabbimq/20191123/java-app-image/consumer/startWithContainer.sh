#!/bin/bash

cd /jar
java -jar /jar/spring-boot-rabbitmq-consumer-1.0-SNAPSHOT.jar |tee /jar/jar.log

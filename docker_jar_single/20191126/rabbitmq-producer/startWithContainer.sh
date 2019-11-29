#!/bin/bash

cd /jar
java -jar /jar/spring-boot-rabbitmq-producer-1.0-SNAPSHOT.jar |tee /jar/jar.log

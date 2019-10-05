#!/bin/bash

cd /jar
java -Dloader.path=./libs -jar /jar/org-crm.jar |tee /jar/jar.log

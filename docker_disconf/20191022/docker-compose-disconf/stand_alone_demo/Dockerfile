#基础镜像使用weixiaozheqingfu/docker_image_jdk8:20190930
FROM weixiaozheqingfu/docker_image_jdk8:20190930

#作者
MAINTAINER limengjun

#定义工作目录
ENV WORK_PATH /usr/local/work

#创建工作文件夹
RUN mkdir -p $WORK_PATH

#复制应用包到工作文件夹
COPY ./starter-run $WORK_PATH/

RUN chmod 700 $WORK_PATH/start.sh

RUN chmod 700 $WORK_PATH/disconf-standalone-demo.jar

ENTRYPOINT ["sh","/usr/local/work/start.sh"]
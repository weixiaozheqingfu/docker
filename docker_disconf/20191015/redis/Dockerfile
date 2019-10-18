FROM redis:5.0.4

#作者
MAINTAINER limengjun

#创建redis日志目录
RUN mkdir -p /var/log/redis/

#定义redis配置文件所在目录
ENV REDIS_CONF_DIR /etc/redis

#定义redis配置文件名称
ENV REDIS_CONF_FILE_NAME redis.conf

#复制redis配置文件
COPY ./$REDIS_CONF_FILE_NAME $REDIS_CONF_DIR/

#给配置文件增加读权限
RUN chmod a+xr $REDIS_CONF_DIR/$REDIS_CONF_FILE_NAME

#给日志目录增加读写权限
RUN chmod 777 /var/log/redis/


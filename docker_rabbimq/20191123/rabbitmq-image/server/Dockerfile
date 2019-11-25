# Docker file for rabbitmq single or cluster from weixiaozheqingfu 
# VERSION rabbitmq-server-3.7.5.rc.1-1.el7.noarch.rpm   erlang-19.3.6.5-1.el7.centos.x86_64.rpm
# Author: weixiaozheqingfu

#基础镜像
FROM rabbitmq-base:20191123

#作者
MAINTAINER weixiaozheqingfu <weixiaozheqingfu@gmail.com>

#添加配置文件
ADD rabbitmq.config /etc/rabbitmq/

#添加cookie，使集群环境中的机器保持互通
ADD erlang.cookie /var/lib/rabbitmq/.erlang.cookie

#添加启动容器时执行的脚本，主要根据启动时的入参做集群设置
ADD startrabbit.sh /opt/rabbit/

#给相关资源赋予权限
RUN chmod u+rw /etc/rabbitmq/rabbitmq.config \
&& chown rabbitmq:rabbitmq /var/lib/rabbitmq/.erlang.cookie \
&& chmod 400 /var/lib/rabbitmq/.erlang.cookie \
&& mkdir -p /opt/rabbit \
&& chmod a+x /opt/rabbit/startrabbit.sh

#暴露常用端口
EXPOSE 5672
EXPOSE 15672
EXPOSE 25672
EXPOSE 4369
EXPOSE 9100
EXPOSE 9101
EXPOSE 9102
EXPOSE 9103
EXPOSE 9104
EXPOSE 9105

#设置容器创建时执行的脚本
CMD /opt/rabbit/startrabbit.sh

这个disconf是专门为syswin下的项目使用disconf搭建的，可能相比标准的20191018有微调。


firewall-cmd --zone=public --add-port=80/tcp
firewall-cmd --zone=public --add-port=8081/tcp
firewall-cmd --zone=public --add-port=2181/tcp
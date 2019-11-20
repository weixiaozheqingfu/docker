FROM sebp/elk:740

# overwrite existing file
ADD ./logstash-conf/11-nginx.conf /etc/logstash/conf.d/11-nginx.conf
ADD ./logstash-conf/30-output.conf /etc/logstash/conf.d/30-output.conf

# add new file
ADD ./logstash-conf/12-project-log-filter.conf /etc/logstash/conf.d/12-some-filter.conf
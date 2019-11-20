echo "start filebeat now ..."
nohup /opt/filebeat-7.4.2-linux-x86_64/filebeat -e -c /opt/filebeat-7.4.2-linux-x86_64/filebeat.yml >/dev/null 2>&1 &
echo "start nginx now ..."
nginx -g "daemon off;"
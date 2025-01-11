docker stack deploy -c filebeat/filebeat.stack.yml filebeat
sudo chown $(whoami):$(whoami) ./filebeat.yml
sudo chown root:root ./filebeat.yml
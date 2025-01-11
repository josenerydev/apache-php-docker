docker stack deploy -c filebeat/filebeat.stack.yml filebeat
sudo chown $(whoami):$(whoami) ./filebeat.yml
sudo chown root:root ./filebeat.yml

docker run --rm -v $(pwd)/filebeat.yml:/usr/share/filebeat/filebeat.yml:ro elastic/filebeat:8.15.3 filebeat test config

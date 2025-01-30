docker build -t app:1.0.0 .

docker stack deploy -c docker-compose.yml mystack

docker network rm webnet
docker network create --driver overlay --attachable webnet

docker network create --driver overlay --attachable elastic_network

ls -l filebeat.yml


sudo chown $(whoami):$(whoami) ./filebeat.yml
sudo chown root:root ./filebeat.yml

docker stack deploy -c elastic/elastic.stack.yml elastic
docker stack deploy -c kibana/kibana.stack.yml kibana
docker stack deploy -c filebeat/filebeat.stack.yml filebeat

docker stack rm elasticsearch
docker stack rm fluentd
docker stack rm kibana
docker stack rm nginx


docker service ps nginx_nginx --no-trunc

docker build -t app:1.0.0 .

docker stack deploy -c docker-compose.yml mystack

docker network rm webnet
docker network create --driver overlay --attachable webnet

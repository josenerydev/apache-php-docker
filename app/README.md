docker stack deploy -c app/app.stack.yml app

docker build -t app:1.0.0 .

docker build -t app:2.0.2 ./app

chmod -R 777 app/logs
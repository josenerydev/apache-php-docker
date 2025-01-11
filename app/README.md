docker stack deploy -c app/app.stack.yml app

docker build -t app:1.0.0 .

docker build -t app:1.0.7 ./app

chmod -R 777 app/logs
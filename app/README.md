docker stack deploy -c app/app.stack.yml app

docker build -t app:1.0.0 .

docker build -t app:1.0.8 ./app

chmod -R 777 app/logs
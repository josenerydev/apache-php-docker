docker stack deploy -c nginx/nginx.stack.yml nginx


chmod -R 777 nginx/logs

chmod -R 755 nginx/logs
chown -R $(id -u):$(id -g) nginx/logs

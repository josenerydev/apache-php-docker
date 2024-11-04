ssh -i ~/.ssh/id_rsa root@95.217.237.232

sudo apt update
sudo apt install certbot

docker compose down
docker compose up --build -d

docker run -it --rm --name certbot \
  -v "$(pwd)/certs:/etc/letsencrypt" \
  -v "$(pwd)/conf:/etc/letsencrypt/conf" \
  -v "$(pwd)/html:/var/www/html" \
  certbot/certbot certonly --webroot \
  -w /var/www/html \
  -d apache.dotnery.com \
  --email josenerydev@gmail.com \
  --agree-tos \
  --non-interactive


docker run -it --rm --name certbot \
  -v "/root/apache-php-docker/certs:/etc/letsencrypt" \
  -v "/root/apache-php-docker/conf:/etc/letsencrypt/conf" \
  certbot/certbot renew


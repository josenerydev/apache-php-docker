# Use a imagem oficial do Apache com suporte a PHP
FROM php:8.2-apache

# Habilite o mod_rewrite do Apache
RUN a2enmod rewrite

# Copie os arquivos de configuração personalizados
COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf

# Copie os arquivos HTML para o diretório padrão do Apache
COPY html/ /var/www/html/

# Ajuste as permissões para o Apache
RUN chown -R www-data:www-data /var/www/html

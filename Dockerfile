FROM php:8.2-apache

# Habilite os módulos do Apache
RUN a2enmod rewrite
RUN a2enmod ssl  # Habilite o módulo SSL

# Desabilite o site padrão e configure o seu
RUN a2dissite 000-default
COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default

# Copie os arquivos HTML para o diretório padrão do Apache
COPY html/ /var/www/html/
# Ajuste as permissões para o Apache
RUN chown -R www-data:www-data /var/www/html

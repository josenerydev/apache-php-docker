FROM php:8.2-apache

# Habilite o mod_rewrite do Apache
RUN a2enmod rewrite

# Desabilite o módulo SSL e o site SSL padrão
RUN a2dismod ssl
RUN a2dissite default-ssl

# Desabilite o site padrão e habilite seu site
RUN a2dissite 000-default
COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2ensite 000-default

# Copie os arquivos HTML para o diretório padrão do Apache
COPY html/ /var/www/html/

# Ajuste as permissões para o Apache
RUN chown -R www-data:www-data /var/www/html

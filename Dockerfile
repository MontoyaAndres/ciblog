FROM php:7.3-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY . /var/www/html/

RUN ["bash", "-c", "chmod -R 777 /var/www/html"]

RUN a2enmod rewrite

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN service apache2 restart

EXPOSE 8080

USER root
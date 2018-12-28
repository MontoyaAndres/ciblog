FROM php:7.3-apache

RUN a2enmod rewrite

COPY . /var/www/html/

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN ["bash", "-c", "chmod -R 755 /var/www/html"]

EXPOSE 80

USER root

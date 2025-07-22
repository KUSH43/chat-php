# Dockerfile
FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

COPY . /var/www/html/
COPY .env /var/www/html/.env

RUN chown -R www-data:www-data /var/www/html

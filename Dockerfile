FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libzip-dev \
    zip \
    && docker-php-ext-install gd pdo pdo_mysql zip

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html/

FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libzip-dev \
    zip \
    && docker-php-ext-install gd pdo pdo_mysql zip

RUN a2enmod rewrite
COPY 000-default.conf /etc/apache2/sites-available/

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

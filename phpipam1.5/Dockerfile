FROM php:7.4.22-apache

COPY install-php-extensions /usr/local/bin/

RUN apt-get update && apt-get install -y build-essential libmcrypt-dev
RUN a2enmod rewrite
RUN chmod +x /usr/local/bin/install-php-extensions && sync && install-php-extensions \
gettext \
gmp \
gd \
pdo_mysql \
sockets \
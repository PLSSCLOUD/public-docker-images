FROM php:5.6-apache

#ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
COPY install-php-extensions /usr/local/bin/

RUN apt-get update && apt-get install -y build-essential libmcrypt-dev
RUN chmod +x /usr/local/bin/install-php-extensions && sync && install-php-extensions \
bcmath \
curl \
dom \
fileinfo \
gd \
imap \
json \
ldap \
mbstring \
mcrypt \
memcache \
memcached \
mysql \
mysqli \
oauth \
odbc \
opcache \
pdo \
pdo_mysql \
pdo_sqlite \
pdo_odbc \
phar \
posix \
sockets \
sqlite3 \
sysvmsg \
sysvsem \
sysvshm \
tidy \
xdebug \
xmlreader \
xmlwriter \
xsl \
wddx \
zip
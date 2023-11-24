FROM php:7.4-apache

#ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
COPY install-php-extensions /usr/local/bin/

RUN apt-get update && apt-get install -y build-essential libmcrypt-dev
RUN chmod +x /usr/local/bin/install-php-extensions && sync && install-php-extensions \
#apc \
apcu \
calendar \
Core \
ctype \
date \
exif \
FFI \
fileinfo \
filter \
ftp \
gd \
gettext \
gmp \
hash \
iconv \
imap \
intl \
json \
ldap \
libxml \
mysqli \
openssl \
pcntl \
pcre \
PDO \
Phar \
posix \
readline \
Reflection \
session \
shmop \
sockets \
sodium \
SPL \
standard \
sysvmsg \
sysvsem \
sysvshm \
tokenizer \
xmlrpc \
'Zend OPcache' \
zlib

COPY . .

RUN apt-get update && apt-get -y install parallel curl nano && apt-get -y autoremove && apt-get -y autoclean && apt-get -y clean
RUN chmod +x *.sh
ADD crond/crontab /etc/crontab
RUN chmod 0644 /etc/crontab

ENTRYPOINT ["/entrypoint.sh"]
CMD /bin/bash

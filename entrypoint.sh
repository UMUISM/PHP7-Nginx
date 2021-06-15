#!/bin/bash

set -e

if [ "$1" = 'php' ] && [ "$(id -u)" = '0' ]; then
    chown -R www-data /var/www/html
    chmod -R 777 /var/www/html/
fi

/usr/local/php/sbin/php-fpm -D
/usr/local/nginx/sbin/nginx

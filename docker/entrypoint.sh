#!/bin/sh
php /var/www/html/artisan migrate --force
exec supervisord -c /etc/supervisord.conf

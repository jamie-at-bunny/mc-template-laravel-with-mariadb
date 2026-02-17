#!/bin/sh
cd /var/www/html

php artisan config:cache
php artisan route:cache
php artisan view:cache
php artisan migrate --force

exec supervisord -c /etc/supervisord.conf

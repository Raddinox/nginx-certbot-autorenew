#!/bin/sh

echo "----------------------------------------"
echo $(date)
echo
certbot renew --webroot -w /var/www/certbot


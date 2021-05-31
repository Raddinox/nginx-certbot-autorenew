#!/bin/bash

mkdir -p cert certbot-www conf.d

docker run -it --rm --name certbot \
            -p 80:80 -p 443:443 \
            -v "./cert:/etc/letsencrypt" \
            certbot/certbot certonly --standalone \ 
                 -d <YOUR_DOMAIN> \
                 -d <YOUR_SUB_DOMAIN> \
                 --non-interactive --agree-tos \
                 --email <YOUR_EMAIL> --expand


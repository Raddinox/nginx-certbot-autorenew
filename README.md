# Docker services, Nginx and certbot with autorenew
Docker-compose for Nginx container and a certbot autorenew container

First you need to add your mail and domain(s) to `certbot_first.sh` script and then run it to generate certificates for your domain.

```$ ./certbot_first.sh```

Then you can start services

```$ docker-compose up -d```

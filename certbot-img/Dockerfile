FROM certbot/certbot:v1.15.0
MAINTAINER PeterH (blog.raddinox.com)

VOLUME /etc/letsencrypt

# Add crontab
ADD crontab /etc/crontabs
RUN crontab /etc/crontabs/crontab

COPY *.sh /opt/
RUN chmod -R +x /opt/

ENTRYPOINT ["/opt/start_crond.sh"]

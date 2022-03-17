#!/bin/sh

echo $(date)
echo "Certbot service started"
echo "----------------------------------------"

# Make sure cron.log exists
touch /var/log/cron.log

# Lets start rsyslog & crond for perodic updates
exec rsyslogd &
exec crond &

# Need a foreground process, just tail the cron log
# this will make it visible using docker logs
tail -f /var/log/cron.log

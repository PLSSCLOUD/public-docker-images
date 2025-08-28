#!/bin/bash
/usr/sbin/cron
/crontab.sh
/mail.sh
exec "$@"
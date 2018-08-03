#!/bin/sh

if ! grep -q /opt/farm/ext/cloud-utils/cron /etc/crontab; then
	echo "setting up crontab entry"
	echo "35 * * * * root /opt/farm/ext/cloud-utils/cron/test-accounts.sh" >>/etc/crontab
fi

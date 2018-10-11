#!/bin/sh

if grep -q /opt/farm/ext/cloud-utils/cron /etc/crontab; then
	sed -i -e "/\/opt\/farm\/ext\/cloud-utils\/cron/d" /etc/crontab
fi

echo "skipping setup (deprecated extension)"

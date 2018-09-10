#!/bin/sh

echo "skipping setup (deprecated extension)"
exit 0

/opt/farm/scripts/setup/extension.sh sf-cloud-client-ec2
/opt/farm/scripts/setup/extension.sh sf-cloud-client-azure

if ! grep -q /opt/farm/ext/cloud-utils/cron /etc/crontab; then
	echo "setting up crontab entry"
	echo "35 * * * * root /opt/farm/ext/cloud-utils/cron/test-accounts.sh" >>/etc/crontab
fi

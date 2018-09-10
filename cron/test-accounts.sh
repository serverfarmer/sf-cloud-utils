#!/bin/sh

if [ -x /opt/polynimbus/api/v1/all/test.sh ]; then
	/opt/polynimbus/api/v1/all/test.sh

elif [ -d /etc/local/.cloud/ec2 ]; then
	accounts=`/opt/farm/ext/cloud-client-ec2/utils/list-accounts.sh`

	for A in $accounts; do
		/opt/farm/ext/cloud-client-ec2/utils/test-account.sh $A $@
	done
fi

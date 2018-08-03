#!/bin/sh

accounts=`/opt/farm/ext/cloud-client-ec2/utils/list-accounts.sh`

for A in $accounts; do
	/opt/farm/ext/cloud-client-ec2/utils/test-account.sh $A $@
done

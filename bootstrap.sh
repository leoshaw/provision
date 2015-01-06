#!/bin/bash
if [ "$1" != "" ]
then
	server_address=$1
else
	echo "Server address must be supplied"
	exit 1
fi

tar -czf remote.tgz remote
scp remote.tgz $server_address:~/.
ssh $server_address << REMOTE_COMMANDS
tar -xzf remote.tgz
cd remote
bash ./bootstrap.sh
puppet apply --modulepath=./modules manifests/site.pp
puppet apply
REMOTE_COMMANDS

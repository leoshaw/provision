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
gem install librarian-puppet --no-ri --no-rdoc
librarian-puppet install --verbose
puppet apply --modulepath=./modules:./my_modules manifests/site.pp
REMOTE_COMMANDS
rm remote.tgz

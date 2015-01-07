sudo apt-get update
sudo apt-get -y install puppet build-essential ruby-dev
gem install librarian-puppet --no-ri --no-rdoc
librarian-puppet install --verbose
puppet apply --modulepath=./modules:./my_modules manifests/site.pp

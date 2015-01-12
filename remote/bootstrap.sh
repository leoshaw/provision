sudo apt-get update
sudo apt-get -y install puppet build-essential ruby-dev git
sudo gem install librarian-puppet --no-ri --no-rdoc
sudo librarian-puppet install --verbose
sudo puppet apply --modulepath=./modules:./my_modules manifests/site.pp

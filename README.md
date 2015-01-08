# Provision

Bootstraps a server by installing puppet and creating a deployer user with sudo
Note that after creating the provisioning user, ssh login as root will be disabled, as will password authentication

## Pre-requisites

1. Linux server using apt for package management, with puppet available from the repo
2. Ability to ssh onto the target server as a user with root (username doesn't matter, as it can be supplied to the bootstrap script)

## Bootstrap

Run the ```bootstrap.sh``` script 

```bash
./bootstrap.sh [<user>@]<server_address>
```

e.g.

```bash
./bootstrap.sh bob@127.0.0.1
```

this will 

1. Copy the ```remote``` directory to the specified server
1. On the remote server
  1. Run remote/bootstrap.sh to update the apt repos
  1. provision with puppet using ```remote/manifests/site.pp```



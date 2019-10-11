# Vagrant

## NFS mount stall

sudo systemctl restart nfs-server
sudo systemctl stop firewalld

## Debugging

VAGRANT_LOG=debug vagrant up

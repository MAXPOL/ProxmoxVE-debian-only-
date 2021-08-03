
#!/bin/bash

echo "Enter ip server: "
read ip

echo "Enter you server name: "
read name

echo "Enter dns name server: "
read dns

echo -n > /etc/hosts
echo "127.0.0.1 localhost" >> /etc/hosts
echo "$ip       $dns $name" >> /etc/hosts

apt -y update
apt -y upgade

echo deb http://download.proxmox.com/debian/pve buster pve-no-subscription | tee /etc/apt/sources.list.d/proxmox.list
wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox-ve-release-6.x.gpg

apt -y update

apt -y install proxmox-ve

cat /etc/issue

#/bin/bash

apt-get update
apt-get dist-upgrade -y
apt-get install -y fail2ban git qemu-system-arm/jessie-backports
qemu-system-arm --version

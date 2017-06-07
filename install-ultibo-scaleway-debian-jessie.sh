#/bin/bash

apt-get update
apt-get dist-upgrade -y
apt-get install -y fail2ban git qemu-system-arm/jessie-backports
qemu-system-arm --version
wget https://github.com/markfirmware/some-binaries/releases/download/1.00/kernel.bin

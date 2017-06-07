#/bin/bash

apt-get update
apt-get dist-upgrade -y
apt-get install -y git qemu-system-arm/jessie-backports
qemu-system-arm --version

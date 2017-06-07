Scaleway
========
vc1s instance running debian jessie

Installation
------------
Just once to install:
```
apt-get install -y git
cd ~
git clone http://github.com/markfirmware/ultibo-qemu-cloud-starter
cd ~/ultibo-qemu-cloud-starter
./install-ultibo-scaleway-debian-jessie.sh
```

Operation
---------
To run
```
cd ~/ultibo-qemu-cloud-starter
./go.sh
```

Tip
---
To keep your bash shell running, especially when running your server,
start tmux
```
tmux
```
and then when you login you attach to your running bash shells:
```
tmux attach
```

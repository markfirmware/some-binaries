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
The output will look like:
```
root@some-host:~/ultibo-qemu-cloud-starter# ./go.sh

there is no kernel.bin - fetching demo from github ... done

host ip address is 212.47.231.140
    ultibo web server is http://212.47.231.140:5578
    regular vnc server is 212.47.231.140:5978
    vnc websocket server used by novnc.com is host 212.47.231.140 port 5778
        url: http://novnc.com/noVNC/vnc_auto.html?host=212.47.231.140&port=5778

QEMU 2.8.0 monitor - type 'help' for more information
(qemu)

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

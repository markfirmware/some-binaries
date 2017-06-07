#!/bin/bash

PORTDIGIT=8 # select 0-9 different instances
# 557x is the ultibo web server
# 577x is the vnc web socket server (for novnc.com)
# 597x is the vnc regular server

#########################################
if [[ ! -e kernel.bin ]]
then
    echo
    echo -n 'there is no kernel.bin - fetching demo from github ... '
    wget -q https://github.com/markfirmware/some-binaries/releases/download/1.00/kernel.bin
    echo done
fi

echo
HOSTIP=$(wget -qO- ident.me)
echo host ip address is $HOSTIP
echo "    ultibo web server is http://$HOSTIP:557${PORTDIGIT}"
echo "    regular vnc server is $HOSTIP:597${PORTDIGIT}"
echo "    vnc websocket server used by novnc.com is host $HOSTIP port 577${PORTDIGIT}"
echo "        url: http://novnc.com/noVNC/vnc_auto.html?host=$HOSTIP&port=577${PORTDIGIT}"
# 256 megabytes
# serial output (e.g. logging) saved in serial0.txt
# any qemu errors saved in qemu.stderr

echo
qemu-system-arm \
    -monitor stdio \
    -M versatilepb \
    -cpu cortex-a8 \
    -kernel kernel.bin \
    -m 256M \
    -serial file:serial0.txt \
    -usb \
    -net nic \
    -net user,hostfwd=tcp::557${PORTDIGIT}-:80 \
    -vnc :7${PORTDIGIT},websocket=577${PORTDIGIT} \
    -append "qemuhostip=$HOSTIP qemuhostportdigit=${PORTDIGIT}" \
    2> qemu.stderr

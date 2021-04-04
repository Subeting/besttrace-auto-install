#!/bin/bash
(apt update;apt install unzip wget -y)||(yum install unzip wget -y)
wget https://cdn.ipip.net/17mon/besttrace4linux.zip -O /tmp/bt.zip
unzip -d /tmp /tmp/bt.zip
chmod 755  /tmp/besttrace
cp  /tmp/besttrace /bin/ -f
rm -rf /tmp/besttrace*
rm -rf /tmp/bt.zip
exit 0

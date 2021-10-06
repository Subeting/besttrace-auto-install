#!/bin/bash
(apt update -y;apt install unzip wget -y)||(yum install unzip wget -y)
wget https://cdn.jsdelivr.net/gh/Subeting/besttrace-auto-install/besttrace4linux.zip -O /tmp/bt.zip
unzip -d /tmp /tmp/bt.zip
chmod 755  /tmp/besttrace
cp  /tmp/besttrace /bin/ -f
rm -rf /tmp/besttrace*
rm -rf /tmp/bt.zip
exit 0

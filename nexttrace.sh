#!/bin/bash
(apt update -y)||true
(apt install jq -y)||(yum install jq -y)
newVer=$(curl  "https://api.github.com/repos/sjlleo/nexttrace-core/tags" | jq -r '.[0].name')
wget https://github.com/sjlleo/nexttrace-core/releases/download/$newVer/nexttrace_linux_amd64 -O /tmp/nexttrace
chmod 755 /tmp/nexttrace
mv /tmp/nexttrace /bin/

#!/bin/bash
bash -c "$(curl http://nexttrace-io-leomoe-api-a0.shop/nt_install_v1.sh)"
alias ntr=nexttrace
#(apt install jq -y)||(yum install jq -y)
#newVer=$(curl  "https://api.github.com/repos/nxtrace/Ntrace-core/tags" | jq -r '.[0].name')
#wget https://github.com/nxtrace/Ntrace-core/releases/download/v1.1.2/nexttrace_linux_amd64 -O /tmp/nexttrace
#chmod 755 /tmp/nexttrace
#mv /tmp/nexttrace /bin/

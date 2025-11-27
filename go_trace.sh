#!/bin/bash
mkdir -p /tmp/trace

read -p "Is your Netowrk V4/V6: " input

case "$input" in
    4|V4|v4)
        echo "You chose IPV4"
        bash <(curl https://cdn.jsdelivr.net/gh/Subeting/besttrace-auto-install/trace4.sh)
        ;;
    6|V6|v6)
        echo "You chose IPV6"
        bash <(curl https://cdn.jsdelivr.net/gh/Subeting/besttrace-auto-install/trace6.sh)
        ;;
    "")
        echo "You chose dual"
        bash <(curl https://cdn.jsdelivr.net/gh/Subeting/besttrace-auto-install/trace4.sh)
        bash <(curl https://cdn.jsdelivr.net/gh/Subeting/besttrace-auto-install/trace6.sh)
        ;;
    *)
        exit 0
        ;;
esac

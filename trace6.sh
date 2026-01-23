#!/bin/bash
  curl -sL nxtrace.org/nt | bash
  function BenchExec_Traceroute_Core() {
    filename="${4//[\/\\]/}"
    /usr/local/bin/nexttrace -j -q 1 -m "$3" -n -g en -c -M "$1"| sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g"|grep -v -e 'NextTrace v' -e 'NextTrace API' -e 'IP Geo Data'|tee -a /tmp/trace/"${filename}.json"
}

function BenchAPI_Traceroute_Pretty() {
BenchExec_Traceroute_Core "$1" "icmp" "$3" "$4"
}

GlobalVar_TracerouteMode='icmp'
GlobalVar_TracerouteMaxHop=30
        BenchAPI_Traceroute_Pretty "2408:80f0:4100:2005::3" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Unicom (Beijing, IPv6)"
        BenchAPI_Traceroute_Pretty "2400:da00:2::29" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Telecom (Beijing, IPv6)"
        BenchAPI_Traceroute_Pretty "2409:8089:1020:50ff:1000::fd01" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Mobile (Beijing, IPv6)"
        BenchAPI_Traceroute_Pretty "2408:8000:9000:20e6::b7" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Unicom (Shanghai, IPv6)"
        BenchAPI_Traceroute_Pretty "240e:18:10:a01::1" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Telecom (Shanghai, IPv6)"
        BenchAPI_Traceroute_Pretty "2409:801e:5c03:2000::207" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Mobile (Shanghai, IPv6)"
        BenchAPI_Traceroute_Pretty "2408:8001:3011:310::3" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Unicom (Guangzhou, IPv6)"
        BenchAPI_Traceroute_Pretty "240e:ff:e02c:1:21::" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Telecom (Guangzhou, IPv6)"
        BenchAPI_Traceroute_Pretty "2409:8057:5c00:30::6" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China Mobile (Guangzhou, IPv6)"
        BenchAPI_Traceroute_Pretty "2001:da8:a0:1001::1" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China CERNET2 (Beijing, IPv6)"
        BenchAPI_Traceroute_Pretty "2400:dd00:0:37::213" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "China CSTNET (Beijing, IPv6)"
        BenchAPI_Traceroute_Pretty "2001:7fa:0:1::ca28:a1a9" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "中国-香港HKIX-IPv6"
        BenchAPI_Traceroute_Pretty "2001:470:0:490::2" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "中国-香港HE-IPv6"
        BenchAPI_Traceroute_Pretty "2001:470:1:ff::1" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-圣何塞-HE-IPv6"
        BenchAPI_Traceroute_Pretty "2001:418:0:5000::1026" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-芝加哥-NTT-IPv6"
        BenchAPI_Traceroute_Pretty "2001:2000:3080:1e96::2" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-洛杉矶-Telia-IPv6"
        BenchAPI_Traceroute_Pretty "2001:668:0:3:ffff:0:d8dd:9d5a" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-洛杉矶-GTT-IPv6"
        BenchAPI_Traceroute_Pretty "2600:0:1:1239:144:228:241:71" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-堪萨斯-Sprint-IPv6"
        BenchAPI_Traceroute_Pretty "2600:80a:2::15" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-洛杉矶-Verizon-IPv6"
        BenchAPI_Traceroute_Pretty "2001:550:0:1000::9a36:4215" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-阿什本-Cogentco-IPv6"
        BenchAPI_Traceroute_Pretty "2001:1900:2100::2eb5" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-圣何塞-Level3-IPv6"
        BenchAPI_Traceroute_Pretty "2001:438:ffff::407d:d6a" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "美国-西雅图-Zayo-IPv6"
        BenchAPI_Traceroute_Pretty "2001:470:0:349::1" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "法国-巴黎-HE-IPv6"
        BenchAPI_Traceroute_Pretty "2001:728:0:5000::6f6" "${GlobalVar_TracerouteMode}" "${GlobalVar_TracerouteMaxHop}" "德国-法兰克福-NTT-IPv6"

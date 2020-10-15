#!/bin/bash
set -o errexit
set -o pipefail
url='https://raw.github.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf'
url1='https://raw.github.com/felixonmars/dnsmasq-china-list/master/apple.china.conf'
url2='https://raw.github.com/felixonmars/dnsmasq-china-list/master/google.china.conf'
data=$(curl -4sSkL "$url") || { echo "download failed, exit-code: $?"; exit 1; }
data1=$(curl -4sSkL "$url1") || { echo "download failed, exit-code: $?"; exit 1; }
data2=$(curl -4sSkL "$url2") || { echo "download failed, exit-code: $?"; exit 1; }
echo "$data $data1 $data2" | awk -F/ '{print $2}' | sort | uniq >chinalist.txt

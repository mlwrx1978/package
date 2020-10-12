#!/bin/bash
set -o errexit
set -o pipefail
>chnroute6.txt
curl -4sSkL 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest' | grep CN | grep ipv6 | awk -F'|' '{printf("%s/%d\n", $4, $5)}' >>chnroute6.txt

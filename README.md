# OpenWrt 去广告 防污染 分流 DNS


 AdGuardHome 使用53端口,上游DNS 127.0.0.1#54
 Dnsmasq 使用54端口,上游DNS 127.0.0.1#5053
 ChinaDNS-NG 使用5053端口 国内上游DNS 127.0.0.1#6053 可信上游DNS 127.0.0.1#7913
 Smartdns 国内使用6053端口 可信使用7913端口



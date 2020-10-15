#!/bin/bash
set -o errexit
set -o pipefail
echo -e "同步文件到passwall目录下(y/n)：\c"
read con
if [[ $con == "Y" ]] || [[ $con == "y" ]]
then
	echo -e "正在同步...\c"
	cat chinalist.txt>/usr/share/passwall/rules/chnlist
	cat chnroute.txt>/usr/share/passwall/rules/chnroute
	cat chnroute6.txt>/usr/share/passwall/rules/chnroute6
	cat gfwlist.txt|awk '{print "server=/."$1"/127.0.0.1#7913\
	\nipset=/."$1"/gfwlist"}'>/usr/share/passwall/rules/gfwlist.conf
	echo "完成，请重新启动pallwall"
else
	echo "如要同步请输入y 或者 Y"
fi

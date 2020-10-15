#!/bin/bash

cd files
echo -e "正在更新chinalist...\c"
./update-chinalist.sh
echo -e "done\n正在更新chnroute...\c"
./update-chnroute.sh
echo -e "done\n正在更新chnroute6...\c"
./update-chnroute6.sh
echo -e "done\n正在更新gfwlist...\c"
./update-gfwlist.sh
echo "done"

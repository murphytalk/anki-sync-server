#/usr/bin/env sh
# on docker
export HOST=`ifconfig eth0 |grep 'inet addr'|sed 's/.*addr:\(.*\) Bcast.*$/\1/g'`
# on DietPi
#export HOST=`sudo ifconfig wlan0 |grep 'inet '|sed 's/.*inet \(.*\) netmask.*$/\1/g'`
cd `dirname $0`
python3 -m ankisyncd


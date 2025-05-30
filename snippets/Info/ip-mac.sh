#! /bin/bash
declare -A output

for IF in wlan0 eth0
do
  line=$(ifconfig $IF | \
       awk '/broadcast/ {printf "%s-", $2 }
       /ether/     {print $2}')
  IFS="-" read ip mac <<< $line
  output[$ip]=$mac
done

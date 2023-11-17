changing mac address using shell scripting

#! /bin/bash

echo "enter enterface"
read enter
echo "enter new mac address"
read mac

ifconfig $enter down
ifconfig $enter  hw ether $mac
ifconfig $enter  up

echo
echo "new MAC"
ifconfig | grep $mac
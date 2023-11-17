changing ip address using shell scripting


#! /bin/bash

echo "enter enterface:"
read enter

echo "enter new IP:"
read ip

ifconfig $enter $ip

echo
echo "new IP:"
ifconfig | grep $ip
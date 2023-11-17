switching to moniter mode



#! /bin/bash

echo "For moniter mode press 1"
read x

monit(){
		ifconfig wlan0 down
		iwconfig wlan0 mode monitr
		ifconfig wlan0 up
		iwconfig 
}

if [ $x -eq 1 ]
then
	echo "Switching to moniter mode"
	monit
else
	echo "Wrong input"
fi

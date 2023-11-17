nmap scanning using shell programming


#! /bin/bash

echo "enter IP"
read ip

echo "enter PORT"
read port

echo "select scan \n 1 for Aggresive \n 2 for Syn \n 3 for TCP"
read st

if [ $st -eq 1 ]
then
	nmap -A $ip -p $port | grep open
elif [ $st -eq 2 ]
then
	nmap -sS -r -sV $ip -p $port | grep open
elif [ $st -eq 3 ]
then
	nmap -sT -r -sV $ip -p $port | grep open
fi
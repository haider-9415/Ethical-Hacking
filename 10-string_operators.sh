string operators

-z --> it tells length of a string is zero if the condition is true
-n --> it tells length of a string is not zero if the condition is true



#! /bin/sh
a="xyz"
b="pqr"

if [ -z $a ]
then
	echo "lenght of a is 0"
else
	echo "length of a is not 0"
fi

if [ -n $a ]
then
	echo "lenght of a is not 0"
else
	echo "length of a is 0"
fi

if [ $b ]
then
	echo "b is not empty"
else
	echo "b is empty"
fi

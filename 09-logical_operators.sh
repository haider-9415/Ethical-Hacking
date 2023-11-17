logical operators

-a --> && or "and"
-o --> || or "or"


x=10
y=20

if [ $x -lt 100 -a $y -gt 15 ]
then
	echo "$x -lt 100 -a $y -gt 15: true"
else
	echo "$x -lt 100 -a $y -gt 15: false"
fi

if [ $x -gt 100 -a $y -gt 15 ]
then
	echo "$x -gt 100 -a $y -gt 15: true"
else
	echo "$x -gt 100 -a $y -gt 15: false"
fi

if [ $x -lt 100 -a $y -lt 15 ]
then
	echo "$x -lt 100 -a $y -lt 15: true"
else
	echo "$x -lt 100 -a $y -lt 15: false"
fi

if [ $x -lt 100 -o $y -gt 15 ]
then
	echo "$x -lt 100 -o $y -gt 15: true"
else
	echo "$x -lt 100 -o $y -gt 15: false"
fi

if [ $x -gt 100 -o $y -gt 15 ]
then
	echo "$x -gt 100 -o $y -gt 15: true"
else
	echo "$x -gt 100 -o $y -gt 15: false"
fi

if [ $x -gt 100 -o $y -lt 15 ]
then
	echo "$x -gt 100 -o $y -lt 15: true"
else
	echo "$x -gt 100 -o $y -lt 15: false"
fi

".............................................................................."

we can use && and ||

for example:
if [ $x -lt 100 ] && [ $y -gt 15 ]
then
	echo "$x -lt 100 && $y -gt 15: true"
else
	echo "$x -lt 100 && $y -gt 15: false"
fi

if [ $x -gt 100 ] && [ $y -gt 15 ]
then
	echo "$x -gt 100 && $y -gt 15: true"
else
	echo "$x -gt 100 && $y -gt 15: false"
fi

if [ $x -lt 100 ] && [ $y -lt 15 ]
then
	echo "$x -lt 100 && $y -lt 15: true"
else
	echo "$x -lt 100 && $y -lt 15: false"
fi

if [ $x -lt 100 ] || [ $y -gt 15 ]
then
	echo "$x -lt 100 || $y -gt 15: true"
else
	echo "$x -lt 100 || $y -gt 15: false"
fi

if [ $x -gt 100 ] || [ $y -gt 15 ]
then
	echo "$x -gt 100 || $y -gt 15: true"
else
	echo "$x -gt 100 || $y -gt 15: false"
fi

if [ $x -gt 100 ] || [ $y -lt 15 ]
then
	echo "$x -gt 100 || $y -lt 15: true"
else
	echo "$x -gt 100 || $y -lt 15: false"
fi

we can use thses 

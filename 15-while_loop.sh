# syntax:
while [ conditon ] --> loop is over when condition is false
do
    statement
done
# for example:
a=0

while [ $a -lt 10 ] 
do
	echo $a
	a=`expr $a + 1`
done

while [ $a -lt 10 ]
do
	echo $a
	a=$(( a+1 ))
done
echo

echo "while loop"
while (( $a<=10 ))
do
	echo "$a"
	(( ++a )) # we can use a++ also
done
echo


# sleep statement
# syntax: --> sleep n
# using this statement, we can give the gap of 'n' seconds between every two iterations 
# for example:
a=0
echo "while loop"
while (( $a <= 10 ))
do
	echo "hi, i am haider"
	(( ++a ))
	sleep 2
done
echo


# we can open 'n' terminalsin 'n' iterations of a while loop
# we have to use "gnome-terminal &" to open gnome terminal
# and "xterm &" to open xterm terminal
# for example:
a=1
echo "while loop"
while (( $a <= 3 ))
do
	(( ++a ))
	gnome-terminal &
	xterm &
done
echo



# we can read content of a file using while loop
# there are three ways

# way 1
echo "File name: \c "
read fn
while read p
do
	echo $p
done < $fn

# way 2
echo "File name: \c "
read fn
cat $fn | while read p
do
	echo $p
done

# way 3
echo "File name: \c "
read fn

while IFS= read -r p
do
	echo $p
done < $fn
echo

relational operators

-eq  --->  ==
-ne  --->  !=
-gt  --->  >
-lt  --->  <
-ge  --->  >=
-le  --->  <=

"............................................................................."

for example

if [ $a -eq $b ]
then
   echo "[$a -eq $b]: The condition passed as a is equal to b"
else
   echo "[$a -eq $b]: The condition failed as a is not equal to b"
fi
echo

if [ $a -ne $b ]
then
   echo "[$a -ne $b]: The condition passed as a is not equal to b"
else
   echo "[$a -ne $b]: The condition failed as a is equal to b"
fi
echo

if [ $a -gt $b ]
then
   echo "[$a -gt $b]: The condition passed as a is greater than b"
else
   echo "[$a -gt $b]: The condition failed as a is not greater than b"
fi
echo

if [ $a -lt $b ]
then
   echo "[$a -lt $b]: The condition passed as a is less than b"
else
   echo "[$a -lt $b]: The condition failed as a is not less than b"
fi
echo

if [ $a -ge $b ]
then
   echo "[$a -ge $b]: The condition passed as a is greater than or  equal to b"
else
   echo "[$a -ge $b]: The condition failed as a is not greater than or equal to b"
fi
echo

if [ $a -le $b ]
then
   echo "[$a -le $b]: The condition passed as a is less than or  equal to b"
else
   echo "[$a -le $b]: The condition failed as a is not less than or equal to b"
fi

"............................................................................."

we can use "<", ">", "<=" and ">=" but we have to use (()) instead of []
for example:
if (($a < $b))
then
   echo "(($a < $b)): The condition passed as a is equal to b"
else
   echo "(($a < $b)): The condition failed as a is not equal to b"
fi
echo

"............................................................................."

comprasion operators for string

=/== --> is equal to
!= --> is not equal to
< --> less than in ascii alpabetical order
> --> gtreater than in ascii alphabetical order

for example:
if [ $a = $b ]
then
	echo "a is equal to b"
else
	echo "a is not equal to b"
fi

if [ $a != $b ]
then
	echo "a is not equal to b"
else
	echo "a is equal to b"
fi

"............................................................................."

on using "<" nad ">", we have to use [[]]

for example: 
if [[ $a < $b ]]
then
	echo "a is less than b"
else
	echo "a is not less than b"
fi

if [[ $a > $b ]]
then
	echo "a is greater than b"
else
	echo "a is not greater than b"
fi
# there are three types of loop

# type-1 --> while loop
# syntax:
while [ conditon ] --> loop is over when condition is false
do
    statement
done



# type-2 --> for loop
# suntax:
	for i in statement
	do
		statement
	done



# type-3 --> until loop
# syntax:
	#  loop is over when condition is true
	until [ condition ]
	do
		statement
	done
# for exampel:
	c=10
	until [ $c == 0 ]
	do
		echo "$c"
		c=$((i-1))
	done
	#output --> 10 9 8 7 6 5 4 3 2 1(vertically)

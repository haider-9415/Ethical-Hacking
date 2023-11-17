
# break statement
# it eliminates the working of the loop

# for example
for (( i=1 ; i<=10 ; i++ ))
do
	if [ $i -gt 5 ]
	then
		break
	fi
	echo $i
done

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh 
1
2
3
4
5



# continue statement
# it stops a perticular iteration of a loop to execute

# for example
for (( i=1 ; i<=10 ; i++ ))
do
	if [ $i -eq 5 -o $i -eq 7 ]
	then
		continue
	fi
	echo $i
done

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
1
2
3
4
6
8
9
10



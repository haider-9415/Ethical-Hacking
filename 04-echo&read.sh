echo --> it is a function to print the output on screen

for example:
echo "my name is haider"   written in echo_read.sh file

output:
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh 
my name is haider

"..................................................................."

to take the input in same line after using echo, we use -e and \c
for examlple:
echo -e "enter name: \c "
read name
echo "name --> $name"

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./relat_opr.sh
enter name: haider
name --> haider

"..................................................................."

read --> it is function to take input from user

for example:
echo "enter name:"
read name
echo "my name is $name"   written in echo_read.sh file

output:
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh     
enter name:
haider
my name is haider

"..................................................................."

we can take multiple inputs

for example:
read name1 name2 name3 name4
echo "names are $name1 $name2 $name3 $name4"

output
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh
enter names:
haider 1234 4321
names are haider 1234 4321 

"..................................................................."

-p is used to take input in same line

for example:
read -p "name: " nm
echo "name is $nm"

output:
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh
name: haider
name is haider

"..................................................................."

-sp is used to hide the input

for examlple:
read -sp "Password: " nm
echo
echo "Password is $nm"

output:
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh
Password: 
Password is abcd1234

"..................................................................."

-a is used to store multiple inputs in an array

for example:
echo "enter names:"
read -a names
echo "Names: ${names[0]},${names[1]},${names[2]}"

output: we have to do indexing to print
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh
enter names:
abcd efgh ijkl mnop
Names: abcd,efgh,ijkl

"..................................................................."

if the variable is not given then we use REPLY variable

for examlple:
echo "enter name:"
read 
echo "Name: $REPLY"

output:
┌──(root㉿haider)-[/home/haider]
└─# ./echo_read.sh
enter name:
haider
Name: haider

"..................................................................."


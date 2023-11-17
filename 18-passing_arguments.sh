to pass arguments, we have to pass them with "$" sign and number in sequence

for example:
echo "arguments: "
echo $1 $2 $3

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl
arguments: 
abcd efgh ijkl


for example:
echo "arguments: "
echo $3 $1 $2

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl
arguments: 
ijkl abcd efgh

"..................................................................."

on using $0, it will give the file name
for example:
echo "arguments: "
echo $0 $1 $2 $3

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl
arguments: 
./pass_args.sh abcd efgh ijkl

only the file name
for example:
echo "arguments: "
echo $0 $1 $2 $3

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl mnop
arguments: 
./pass_args.sh abcd efgh ijkl

"..................................................................."

we can store them in array and print them, in this, file name does not come as output
for example:
echo "arguments: "
args=("$@")  # it is an array
echo  ${args[0]} ${args[1]} ${args[2]}

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl
arguments: 
abcd efgh ijkl

"..................................................................."

we can use only $@ to print all elements in the array

for example:
echo "arguments: "
args=("$@")  # it is an array
echo $@

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl
arguments: 
abcd efgh ijkl

"..................................................................."

$# is used to find no. of passing arguments

for example:

args=("$@")  # it is an array
echo "no. of arguments: $#"

output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./pass_args.sh abcd efgh ijkl
no. of arguments: 3

"..................................................................."
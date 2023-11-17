# global variable
# it can be used any where in the shell script

# for example
print () {
	echo $name
}

name="haider" # we can used it in the function also
print

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
haider

".................................................................................."

# local variable
# it can not be used any where in the shell script

# for example
print () {
	name="haider"
	echo $name
}

echo $name

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh

# we can not used "name" declared in the function out of it

".................................................................................."

# after calling the function, the global variabl is redeclared

# for example
print () {
	name=$1
    echo "$name : in function "
}

name="haider"

echo "$name : before"
print abcd
echo "$name : after"

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
haider : before
abcd : in function
abcd : after

".................................................................................."

# on using "local" keyword, the global variable is not redelared

# for example
print () {
	local name=$1
    echo "$name : in function "
}

name="haider"

echo "$name : before"
print abcd
echo "$name : after"

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
haider : before
abcd : in function 
haider : after


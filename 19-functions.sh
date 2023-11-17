# syntax-1
function name(){
    comands
}

# for example
function hello(){
	echo "hello"
	echo "i am haider"
}

hello # to call the function

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
hello
i am haider

"......................................................................"

# syntax-2
name () {
    command
}

# for example
hello () {
	echo "hello"
	echo "i am haider"
}

hello

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
hello
i am haider

"......................................................................"

# to pass arguments we have to use "$1" for 1st argument $2 for 2nd argument and so on

# for example
print () {
	echo $1 $2
}

print this is shell scripting

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
this is

# for example

add () {
	echo $1 $2 $3 $4
}

add this is shell scripting

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
this is shell scripting

"......................................................................"

# code
usage () {
	echo "you need to provide an argument"
	echo "usage : $0 fle_name"
	exit
}

is_file_exist () {
    file=$1
    [[ -f $file ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage # "$#" it gives no. of arguments given

if ( is_file_exist $1 ) # here $1 is to take file name from user it is not equal to that which in function
then
	echo "file found"
else
	echo "file not found"
fi

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh          
you need to provide an argument
usage : ./test.sh fle_name
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh file.txt 
 not found
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh file1.txt
 found

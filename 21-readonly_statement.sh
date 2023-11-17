# on using it, we can not overwrite that variable or function

# for example
name="haider"

readonly name

name="abcd"

echo "name --> $name"

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh file1.txtq
./test.sh: line 7: name: readonly variable
name --> haider

"............................................................................."

# to use it for a function, we have to use "-f" with it

# for example
hello () {
	echo "i am haider"
}

readonly -f hello

hello () {
	echo "i am haider again"
}

hello

# output
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ./test.sh
./test.sh: line 11: hello: readonly function
i am haider

".................................................................................."

# to see the built-in readonly variables, simply enter "readonly" in terminal

# to see the built-in readonly functions, simply enter "readonly -f" in terminal
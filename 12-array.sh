# the array is crated using ()
# in this elements are seperated by single spaces 

arr=("Windows" "Ubuntu" "Kali" "Parrot")

# to print whole array
echo "${arr[@]}"
echo

# to print specific element
echo "${arr[0]}"; echo "${arr[1]}"; echo "${arr[2]}"; echo "${arr[3]}"
echo

# to print the indices of the array
echo "${!arr[@]}"

# to print length of the array
echo "${#arr[@]}"

# to add an element
array_name[index_no]=element
# for example
arr[5]="macOS"
arr[8]="linux"
echo "${arr[@]}"
echo "${!arr[@]}"
echo "${#arr[@]}"
echo
# output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh
Windows Ubuntu Kali Parrot macOS linux
0 1 2 3 5 8
6

# to ipdate an element
array_name[index of that element]=nww_element
# for example:
echo "${arr[@]}"
arr[1]="macOS"
echo "${arr[@]}"
# output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh
Windows Ubuntu Kali Parrot
Windows macOS Kali Parrot

# to remove an element
unset array_name[index of that element]
# for example:
echo "${arr[@]}"
unset $arr[1]
echo "${arr[@]}"
echo "${!arr[@]}"




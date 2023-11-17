# it is used to match several values against one value

# syntax

case expression in
    pattern1 ) statement 
    ;;
    pattern2 ) statement 
    ;;
    pattern3 ) statement 
    ;;
    ...
esac


# for example:
# $1 is used take input stored in variable "vehicals" during the execution of the file

vehicals=$1
case $vehicals in
    "car" ) echo "Rent of $vehicals is ₹1000"
    ;;
    "van" ) echo "Rent of $vehicals is ₹500"
    ;;
    "bicycle" ) echo "Rent of $vehicals is ₹100"
    ;;
    * ) echo echo "Unknown vehicals"
    ;;
esac

# output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh    
Unknown vehicals
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh  car
Rent of car is ₹1000
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh  bicycle 
Rent of bicycle is ₹100
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh  truck  
Unknown vehicals



# another example:
# if you get an error on entering a capital letter then execute it "LANG=C" one time
# [a-z], [A-Z], [0-9] and ? are the patterns

echo -e "Enter any character: \c "
read char

case $char in
    [a-z] ) echo "$char is a small letter"
    ;; 
    [A-Z] ) echo "$char is a capital letter"
    ;;
    [0-9] ) echo "$char is a digit"
    ;;
    ? ) echo "$char is a special character"
    ;;
    * ) echo "Unknown input"
esac

# output:
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh      
Enter any character: r
r is a small letter
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: D
D is a capital letter
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: 7
7 is a digit
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: @
@ is a special character
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: abcd
Unknown input
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: 123
Unknown input
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: !@ 
Unknown input
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: `
` is a special character
                                                              
┌──(root㉿haider)-[/home/haider/Desktop/my_files]
└─# ./test.sh 
Enter any character: ^   
^ is a special character 

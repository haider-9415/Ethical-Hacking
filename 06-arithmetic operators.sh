# arithmetic operators

# we can in use them in two ways but these two ways are used to operate on integers only

a=10
b=20


# way one

add= expr $a + $b
echo "a + b $add"
echo

sub= expr $a - $b
echo "a - b $sub"
echo

mult= expr $a \* $b
echo "a * b $mult"
echo

div= expr $a / $b
echo "a / b $div"
echo

mod= expr $a % $b
echo "a % b $mod"



# way two
echo " (( $a + $b )) = " $(( $a + $b ))
echo
echo " (( $a - $b )) = " $(( $a - $b ))
echo
echo " (( $a * $b )) = " $(( $a * $b ))
echo
echo " (( $a / $b )) = " $(( $a / $b ))
echo
echo " (( $a % $b )) = " $(( $a % $b ))



# to operate on decimal and other numbers, we have to use "bc" command
# we can do any operation like arithmetic for any type of number, trigonometric, etc.

# for example:
x=10.5
y=10

echo $x + $y | bc
echo
echo $x - $y | bc
echo
echo $x \* $y | bc
echo
echo $x / $y | bc
echo
echo $x % $y | bc
echo

# in "$x / $y", the result comes in integer, to obtain result in decimal, we use "scale=n;" 
# it will give the result upto n decimal values 

# for examlple
echo $x / $y | bc
echo
echo "scale=2;" $x / $y | bc
echo
echo "scale=10;" $x / $y | bc
echo
echo "scale=0;" $x / $y | bc
echo

# for square root, we have to use sqrt() with bc and " -l ", "-l" is the math library where that function is 

# for example
p=4
q=2
r=25

echo "sqrt($p)" | bc -l
echo
echo "sqrt($q)" | bc -l
echo
echo "sqrt($r)" | bc -l
echo
echo "scale=3; sqrt($p)" | bc -l
echo
echo "scale=3; sqrt($q)" | bc -l
echo
echo "scale=3; sqrt($r)" | bc -l



# for exponent, we use ^ and -l

# for example
echo "3^3" | bc -l
echo
echo "2^4" | bc -l
echo
echo "8^2" | bc -l
echo
echo "10^10" | bc -l
read -p "enter a number a: " a
read -p "enter a number b: " b
read -p "enter a number c: " c

num1=$(( $a + (( $b * $c )) ))
num2=$(( $c + (( $a / $b )) ))
num3=`echo  $a % $b  + $c | bc -l`
num4=$(( (( $a * $b )) + $c ))
echo "a+b*c=$num1"
echo "c+a/b=$num2"
echo "a%b+c=$num3"
echo "a*b+c=$num4"

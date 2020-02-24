#!/bin/bash -x
#To perform arithmatic operation according to question
read -p "enter a number a: " a
read -p "enter a number b: " b
read -p "enter a number c: " c
num1=`echo "scale=2 ; $a + $b * $c " | bc -l`
min=$number1
max=$num1
num2=`echo "scale=2 ; $c + $a / $b" | bc -l`
num3=`echo "scale=2 ; $a % $b + $c" | bc -l`
num4=`echo "scale=2 ; $a * $b + $c" | bc -l`
echo "num1:"=$num1
echo "num2:"=$num2
echo "num3:"=$num3
echo "num4:"=$num4
#to find max value
if((`echo "$max <= $num2" | bc -q`==1))
then 
	max=$num2
elif((`echo "$max <= $num3" | bc -q`==1))
then 
	max=$num3
elif((`echo "$max <= $num4" | bc -q`==1))
then
	max=$num4
fi
#to find minimum value
if((`echo "$min >= $num2" | bc -q`==1))
then 
	min=$num2
fi
if((`echo "$min >= $num3" | bc -q`==1))
then 
    min=$num3 
fi
if((`echo "$min >= $num4" | bc -q`==1)) 
then 
   min=$num4 
fi 
echo "maximum: $max"
echo "minimum: $min"
 

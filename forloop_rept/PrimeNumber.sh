#!/bin/bash -x
#Print the prime number
echo "enter a number"
read number 
#Let consider flag=0 
flag=0
if(($number == 1))
then
	flag=1
fi
#Logic for prime number
for(( iter=2; iter<=$number/2; iter++))
	do
		if(( number%iter == 0 ))
		then
			flag=1
		fi
	done
if(($flag==0))
then
	echo "prime number"
else
	echo "not prime number"
fi

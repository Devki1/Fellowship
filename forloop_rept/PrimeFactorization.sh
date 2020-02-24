#!/bin/bash -x
#Find factorization of a number and then find prime number 
read -p "enter the prime no:" number
echo "prime factor of $number: "
#Logic for factorization of a number
for((fact=2; fact<=$number; fact++))
do
	if(($number%$fact == 0))
	then
		count=0
		for((iter=2; iter<=$fact/2; iter++))
		do
			if(($fact%$iter == 0))
			then
				((count++))
			fi
		done
		if(($count == 0))
		then
			echo "$fact"
		fi
	fi
done

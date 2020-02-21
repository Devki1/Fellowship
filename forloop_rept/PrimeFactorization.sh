#!/bin/bash -x
read -p "enter the prime no:" number
echo "prime factor of $number: "
for((fact=2; fact<=$number; fact++))
do
	if(($number%$fact == 0))
	then
		count=0
		for((i=2; i<=$fact/2; i++))
		do
 			if(($fact%$i == 0))
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

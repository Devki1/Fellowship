#!/bin/bash -x
read -p 'enter a value:' value1
read -p 'enter a value:' value2
function ispalindrome()
	{   
		number1=$1
		number2=$2
		reverse=0
		while (($number1>0))
		do
			temp=$((number1 % 10))
			reverse=$((reverse*10+temp))
			number1=$((number1 / 10))	
		done
		if (( $reverse == $number2 ))
		then
				echo "palindrome"
		else
				echo "not palindrome"
	 	fi
	}
result1="$( ispalindrome $value1 $value2 )"
echo "$result1"

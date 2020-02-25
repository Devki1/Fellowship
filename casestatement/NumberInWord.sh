#!/bin/bash -x
#Convert a single digit into a word
echo "enter a single digit number"
read number
case $number in
	0)
		echo "Zero"
		;;
	1)
		echo "one"
		;;
	2)
		echo "two"
		;;
	3)
		echo "three"
		;;
	4)
		echo "four"
		;;
	5)
		echo "five"
		;;
	6)
		echo "six"
		;;
	7)
		echo "seven"
		;;
	8)
		echo "seven"
		;;
	9)
		echo "seven"
		;;
	*)
		echo "invalid"
esac
  

#!/bin/bash -x
echo "guess the magic number"
minimum=1
maximum=100
number=-1
	random_magic=$((RANDOM%100 +1))
	while (($minimum<$maximum && $number!=$random_magic))
	do
		echo "guess number between $minimum and $maximum"
		read number
		if(($number == $random_magic))
		then
			echo "found $random_magic"
		elif(($number <= $random_magic))
		then
			minimum=$number
		else
			maximum=$number
		fi
	done

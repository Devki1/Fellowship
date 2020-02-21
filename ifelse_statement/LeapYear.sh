#!/bin/bash -x
echo "enter a year"
read year
if (($year >= 1000  && $year <=9999))
then 
	echo "valid $year"
	if (( $year % 4 ==0  && $year % 100!= 0 || $year % 400 == 0 ))
	then
 		echo $year leap year
	else
 		echo $year not leap year
	fi
else
echo "not valid"
fi

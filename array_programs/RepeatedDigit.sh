#!/bin/bash -x
#Find the digit that are repeated twice in between 1 to 99
#declare variable 
count=0
#Iterate the value from 1 to 100
for((iteration=1;iteration<100;iterartion++))
do
	temp=$iteration
	tens=$(($temp%10))
	temp=$(($temp/10))
	unit=$temp
	#compare tensdigit and unitdigit
	if(($tens == $unit))
	then
		ArrayNumber[$count]=$iteration
			((count++))
	fi
done
echo ${ArrayNumber[@]}

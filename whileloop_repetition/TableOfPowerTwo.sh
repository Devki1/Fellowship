#!/bin/bash -x
#Print a table of power two
echo "enter a number"
read number
power=1
count=1
while [[ $power -lt 256 && $count -lt $((number+1)) ]]
do
	power=$((2*power))
	echo "$power"
	((count++))
done

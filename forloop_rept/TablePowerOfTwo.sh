#!/bin/bash -x
#Take a number from a user
echo "enter a number"
read number
power=1
#logic to print power of 2
for(( iter=1; iter<=$number+1;iter++ ))
do
	echo $power
	power=$((power*2))
done

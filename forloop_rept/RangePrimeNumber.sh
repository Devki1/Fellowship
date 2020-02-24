#!/bin/bash -x
#Generate a prime number from minimum value to maximum value
read -p "enter a minimum:" min
#Take a minimum input from the user
read -p "enter a maximum:" max
#Take a maximum value by a user
#Iterate the value from min to max in a loop
for((iter=$min; iter<=$max; iter++))
do
	flag=0
	if(($iter==1))
	then
	flag=1
	fi
	for((number=2; number<=$iter/2; number++))
	do
		if(($((iter%number)) == 0))
		then
			flag=1
		fi
	done
		if(($flag == 0))
		then
			echo "$iter"
		fi
done

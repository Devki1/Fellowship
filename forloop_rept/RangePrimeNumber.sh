#!/bin/bash -x
read -p "enter a minimum:" min
read -p "enter a maximum:" max
for((number=$min; number<=$max; number++))
do
	flag=0
	if(($number==1))
	then
		flag=1
	fi
	for((num=2; num<=$number/2; num++))
	do
		if(($((number%num)) == 0))
		then
			flag=1
		fi
	done
	if(($flag == 0))
	then
		echo "$number"
	fi
done

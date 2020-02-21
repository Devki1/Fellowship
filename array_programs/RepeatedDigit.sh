#!/bin/bash -x
count=0
for((i=1;i<100;i++))
do
	temp=$i
	  tensdigit=$(($temp%10))
		temp=$(($temp/10))
	 	unitdigit=$temp
	if(($tensdigit == $unitdigit))
	then
		arraynumber[$count]=$i
			((count++))
	fi
done
	echo ${arraynumber[@]}

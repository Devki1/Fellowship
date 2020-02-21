#!/bin/bash -x
number=$1
power=1
for(( count=1; count<=$number;count++ ))
do
		power=$((count*2))
		echo "$power"
done

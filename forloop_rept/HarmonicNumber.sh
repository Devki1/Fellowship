#!/bin/bash -x
number=$1
harmonicnumber=0
for  (( num=1; num<=number;num++ ))
do
	harmonicnumber=`echo "scale=5 ; $harmonicnumber+1/$num" | bc -l`
done
        echo "$harmonicnumber"


#!/bin/bash -x
#Programe to print nth harmonic number
number=$1
harmonicnumber=0
#Logic for print harmonic number
#Scale is used for decimal value
for(( iter=1; iter<=number;iter++ ))
do	
	harmonicnumber=`echo "scale=5 ; $harmonicnumber+1/$iter" | bc -l`
done
echo "$harmonicnumber"


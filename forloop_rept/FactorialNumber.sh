#!/bin/bash -x
#Find the factorial number
echo "enter a number"
#Take a number from the user
read number 
fact=1
#Logic for print a factorial number
for(( iteration=1;iteration<=$number;iteration++))
do	
	fact=$(($fact*$iteration))		
done
echo $fact

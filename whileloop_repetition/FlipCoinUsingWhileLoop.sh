#!/bin/bash -x
#Flip the coin either head or tail
tail=0
head=0
while [[ $head -lt 11 && $tail -lt 11 ]]
do
	random=$(( RANDOM%2 ))
	if(( $random == 1 ))
	then
		echo "head"
		((head++))
		echo "$head"
	else
		echo "tail"
		((tail++))
		echo  "$tail"
	fi
done
if(($head == 11))
then
	echo "$headwin"
else
	echo "tailwin"
fi

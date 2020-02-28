#!/bin/bash -x
echo "Gambler game"
stake=100
goal=200
win=0
loss=0
while (( $stake<=$goal && $stake>0 ))
do
	randomnumber=$((RANDOM%2))
	if(($randomnumber == 1))
	then
		echo "You stake  is win"
		stake=$((stake+1))
			((win++))
	else
		echo "You loss stake"
		stake=$(($stake-1))
			((loss++))
	fi
done
if(($stake == 0))
then
	echo "You are broke"
fi
echo "Win: $win"
echo "Loss:$loss"

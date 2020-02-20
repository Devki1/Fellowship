#!/bin/bash -x
echo "gambler game"
money=100
goal=200
win=0
loss=0
while (( money<=goal && money>0 ))
do
		randomnumber=$((RANDOM%2))
		if(($randomnumber == 1))
		then
				echo "money  is win"
				money=$((money+1))
					((win++))
		else
				echo "loss money"
				money=$((money-1))
					((loss++))
		fi
done
		if((money == 0))
		then
			echo "you broke"
		fi
	echo "win: $win"
	echo "loss:$loss"

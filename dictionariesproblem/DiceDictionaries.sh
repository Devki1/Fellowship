#!/bin/bash -x
#Declare a variable
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A DiceGame
while(($count1<10 && $count2<10&&$count3<10&&$count4<10&&$count5<10&&$count6<10))
do
#Generate a random value 1 to 6
	random=$((RANDOM%6+1))
	case $random in
		1)
		count1=$((count1+1))
		DiceGame[1]="$count1"
		;;

		2)
      		count2=$((count2+1))
      		DiceGame[2]="$count2"
      		;;

		3)
      		count3=$((count3+1))
      		DiceGame[3]="$count3"
      		;;
		4)
      		count4=$((count4+1))
      		DiceGame[4]="$count1"
      		;;
		5)
      		count5=$((count5+1))
      		DiceGame[5]="$count5"
      		;;
		6)
	  	count6=$((count6+1))
      		DiceGame[6]="$count6"
      		;;

	esac
done
echo "${!DiceGame[@]} : ${DiceGame[@]}]"
#Take a loop and count maximum 
maximum=0
for((iter=1; iter<=6 ;iter++))
do
	if(("${DiceGame[$iter]}">$maximum))
	then
		maximum="${DiceGame[$iter]}"
		
	fi
done
echo "$maximum"
#find minimum
minimum=11
for((iter=1;iter<=6;iter++))
do
	if(("${DiceGame[$iter]}"<$minimum))
	then
		minimum="${DiceGame[$iter]}"
	fi
done
echo "$minimum"

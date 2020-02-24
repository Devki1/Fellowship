#!/bin/bash -x
#Generating three digit random value
for((iteration=0;iteration<10;iteration++))
do
	RandomArray[iteration]=$((RANDOM%900+100))
done
echo "Random array is: " ${RandomArray[@]}
secondLargest=${RandomArray[0]}
largest=${RandomArray[0]}
smallest=${RandomArray[0]}
secondSmallest=${RandomArray[0]}
#Finding second largest number 
for((iteration=0;iteration<10;iteration++))
do
	if((${RandomArray[iteration]} > $largest))
	then
		secondLargest=$largest
		largest=${RandomArray[iteration]}
	fi
	if((${RandomArray[iteration]} > $secondLargest && ${RandomArray[iteration]} != $largest))
	then
		secondLargest=${RandomArray[iteration]}
	fi
done
echo "Second largest element is: $secondLargest"
#Finding second smallest random number
for((iteration=0;iteration<10;iteration++))
do
	if((${RandomArray[iteration]} < $smallest))
	then
		secondSmallest=$smallest
		smallest=${RandomArray[iteration]}
	fi
	if((${RandomArray[iteration]} < $secondSmallest && ${RandomArray[iteration]} != $smallest))
	then
		secondSmallest=${RandomArray[iteration]}
	fi
done
echo "second smallest element is : $secondSmallest"

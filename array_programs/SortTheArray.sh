#!/bin/bash -x
#Sort the array of second smallest and second largest
for((iteration=0;iteration<10;iteration++))
do
	#Generate a three digit random value
        randomArray[iteration]=$((RANDOM%900+100))
done

echo "Unsorted array is: "${randomArray[@]}
#Sorting the array with nested loop
for((iteration=0;iteration<10;iteration++))
do
	for((j=iteration+1;j<10;j++))
	do
		if((${randomArray[iteration]}>${randomArray[j]}))
		then
			temp=${randomArray[iteration]}
			randomArray[iteration]=${randomArray[j]}
			randomArray[j]=$temp
		fi
	done
done
echo "Sorted array is: " ${randomArray[@]}
echo "Second largest element is : " ${randomArray[8]}
echo "Second smallest element is : " ${randomArray[1]}

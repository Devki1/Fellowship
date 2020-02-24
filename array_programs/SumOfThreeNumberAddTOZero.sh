#!/bin/bash -x
#Find the sum of three digit number  is zero
read -p "enter the size of array:" length
echo "size of $length"
#Reading element array from user
for(( iter=0;iter<length;iter++))
do
	read array_read
	array[$iter]=$array_read
done	#checking possible triplet
	for (( iter=0; iter<$length-2; iter++)) 
	do
		for ((j=$i+1; j<$length-1; j++)) 
		do
			for ((k=$j+1; k<$length; k++)) 
			do
				if ((`echo ${array[iter]}+${array[j]}+${array[k]} == 0 | bc -q`==1))
				then
					echo "${array[iter]} ${array[j]} ${array[k]}" 
				fi
			done
	done
done

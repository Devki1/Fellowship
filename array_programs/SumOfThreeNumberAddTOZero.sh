#!/bin/bash -x
read -p "enter the size of array:" length
echo "size of $length"
for(( i=0;i<length;i++))
do
		read array_read
		array[$i]=$array_read
done
for (( i=0; i<$length-2; i++)) 
    do
        for ((j=$i+1; j<$length-1; j++)) 
        do
            for ((k=$j+1; k<$length; k++)) 
            do
                if ((`echo ${array[i]}+${array[j]}+${array[k]} == 0 | bc -q`==1))
			then
				echo  "${array[i]} ${array[j]} ${array[k]}" 
		fi
	  done
	done
done

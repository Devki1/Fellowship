#!/bin/bash -x
echo "enter a number"
read number
flag=0
		if(($number == 1))
		then
			flag=1
		fi
		for(( num=2; num<=$number/2; num++))
		do
			if(( number%num == 0 ))
			then
				flag=1
		fi
		done
		if(($flag==0))
    		then
			echo "primenumber"
		else
			echo "not primenumber"
		fi

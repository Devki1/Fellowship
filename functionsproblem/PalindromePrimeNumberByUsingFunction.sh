#!/bin/bash -x
read -p 'Enter Number : ' user_number
loop=0        						
function PrimeNumber()
{
  number=$1
	temp=0
	for(( iter=2 ; iter <= $((number/2)) ; iter++ ))
	do
  	   if (( $(( number % iter )) == 0 ))
  	   then
         temp=1
         break
      fi
   done
	if (( $temp==0  ))
	then
		loop=$(( loop+1 ))
      echo "Prime Number $number"
		loop=$(( loop+1 ))
         if (( $loop <=2 ))                                               
         then
		      isPalindrom $number
         fi
	else
  	   echo "Not Prime Number $number" 
   fi
}



function isPalindrom()
{
   number1=$1
   reversedigit=0
   temp=$number
   while(( $(( number1 > 0 )) ))
   do
      mod=$(( number1%10 ))
      reversedigit=$(( reversedigit*10+mod ))
      number1=$(( number1/10 ))
   done
   if(( $(( reversedigit == temp)) ))
   then
      echo "is palindrom $reversedigit"
		isPrimeNumber $reversedigit
   else
      echo "Not palindrom "
   fi
}
result="$( PrimeNumber $user_number )"
echo "$result"

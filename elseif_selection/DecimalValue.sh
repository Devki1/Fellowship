#!/bin/bash -x
read -p "enter a number:" num
if ((${#num} ==4))
then
   if ((${#num} == 4))
   then 
      echo "unit"
      temp=$((num%10))
      echo "$temp"
      num=$((num/10))
   fi
   if ((${#num} == 3))
   then
     echo "Ten"
     temp=$((num%10))
     echo "$temp"
     num=$((num/10))
   fi
   if ((${#num} == 2))
   then
       echo "hundred"
       temp=$((num%10))
       echo "$temp"
       num=$((num/10))
   fi
   if ((${#num} == 1))
   then
        echo "thousand"
        temp=$((num%10))
        echo "$temp"
        num=$((num/10))
   fi
elif ((${#num} == 3))
then
  if ((${#num} == 3)) 
  then
      echo "unit"
      temp=$((num%10))
      echo "$temp"
      num=$((num/10))
fi
    if ((${#num} == 2))
    then
       echo "tens"
      temp=$((num%10))
      echo"$temp"
      num=$((num/10))
fi
    if ((${#num} == 1))
    then
       echo "hundred"
       temp=$((num%10))
       echo "$temp"
       num=$((num/10))
fi
elif ((${#num} == 2))
then
   if ((${#num} == 2))
   then
       echo "unit"
      temp=$((num%10))
      echo "$temp"
      num=$((num/10))
fi
   if ((${#num} == 1))
    then
       echo "ten"
       temp=$((num%10))
       echo"$temp"
      num=$((num/10))
fi
elif ((num == 1))
then
   echo "unit"
else
echo "invalid"
fi
      

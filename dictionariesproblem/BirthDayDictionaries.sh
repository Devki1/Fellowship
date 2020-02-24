#!bin/bash -x
#declare variable
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
count9=0
count10=0
count11=0
count12=0
person=0
#Counting birthday in a month
declare -A BirthMonth
while((person<=50))
do
	person=$((person+1))
	month=$((RANDOM%12+1))
	case $month in
		1)
		count1=$((count1+1))
		BirthMonth[$month]="$count1"
			;;
		2)
      		count2=$((count2+1))
      		BirthMonth[$month]="$count2"
         		;;
		3)
      		count3=$((count3+1))
      		BirthMonth[$month]="$count3"
         		;;
		4)
      		count4=$((count1+1))
      		BirthMonth[$month]="$count4"
         		;;
		5)
      		count5=$((count5+1))
      		BirthMonth[$month]="$count5"
         		;;
		6)
      		count6=$((count6+1))
      		BirthMonth[$month]="$count6"
         		;;
 		7)
      		count7=$((count7+1))
      		BirthMonth[$month]="$count7"
         		;;
		8)
      		count8=$((count8+1))
      		BirthMonth[$month]="$count9"
         		;;
 		9)
      		count9=$((count9+1))
      		BirthMonth[$month]="$count10"
         		;;
 		10)
      		count10=$((count10+1))
      		BirthMonth[$month]="$count10"
         		;;
 		11)
      		count11=$((count11+1))
      		BirthMonth[$month]="$count11"
         		;;
 		12)
      		count12=$((count12+1))
      		BirthMonth[$month]="$count12"
        		;;
	esac
done
#printing number of a birthday in a month 
echo "January: $count1"
echo "february: $count2"
echo "March: $count3"
echo "April:$count4"
echo "May:$count5"
echo "June:$count6"
echo "July:$count7"
echo "August:$count8"
echo "September:$count9"
echo "October:$count10"
echo "November:$count11"
echo "December:$count12"

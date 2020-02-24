#!//bin/bash -x
#Take a input from a user
read -p "enter a Days:" Day
if (( $Day < 7 ))
then
if (( $Day == 0 ))
then
	echo "Sunday"
elif (( $Day == 1 ))
then 
	echo "Monday"
elif (( $Day == 2 ))
then 
	echo "Tuesday"
elif (( $Day == 3 ))
then 
	echo "Wednesday"
elif (( $Day == 4 ))
then 
	echo "Thursday"
elif (( $Day == 5 ))
then 
	echo "Friday"
elif (( $Day == 6 ))
then 
	echo "Saturday"
else
	echo "Invalid" 
fi
fi   

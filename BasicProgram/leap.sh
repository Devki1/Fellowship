echo "enter a year"
read year
if ["$year" -gt 1000 ] && ["$year" -lt 9999 ]
then 
echo valid $year
else
if [ $[$year % 4] -eq 0 ] && [ $[$year % 100] -ne 0 ] || [ $[$year % 400] -eq 0 ]
then
 echo $year leap year
else
 echo $year not leap year
fi
fi

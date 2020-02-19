#!/bin/bash -x
echo "enter a number"
read number
case $number in
		0)
			echo	"Sunday"
						;;
		1)
			echo	"Monday"
						;;
		2)
			echo	"Tuesday"
						;;
		3)
			echo	"Wednesday"
						;;
		4)
			echo	"Thursday"
						;;
		5)
			echo "Friday"
						;;
		6)
			echo "Saturday"
						;;
		*)
			echo "invalid"
		esac
		

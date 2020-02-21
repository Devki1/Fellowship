#!/bin/bash -x
function CelsiusToFarenhit()
{
	read -p "enter Celsius Temperature:" CelsiusTemp
	if (($CelsiusTemp>=0 && $CelsiusTemp<=100))
	then
		Farenhit=`echo "scale=4;(($CelsiusTemp*9/5))+32" | bc -l`
			 echo "temperature in Farenhit is:"`echo "scale=3; $Farenhit" | bc -l`
	else
		  echo "invalid"
	fi
}
function FarenhitToCelsius()
{
	read -p "enter Farenhit Temperature:" FarenhitTemp
	if (($FarenhitTemp>=32 && $FarenhitTemp<=212))
	then
	Celsius=`echo "scale=4;(($FarenhitTemp-32)) *5/9" | bc -l`
		echo "temperature in Celsius is:"`echo "scale=3; $Celsius" | bc -l`
	else
		echo "invalid"
	fi
}
	echo "1.CelsiusToFarenhit"
	echo "2.farenhitToCelsius"
	read -p "enter number:" number
	case $number in 
			1)
				CelsiusToFarenhit
						;;
			2)
				FarenhitToCelsius
						;;
			*)
				invalid
          esac
			

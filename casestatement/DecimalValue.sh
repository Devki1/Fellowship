#!/bin/bash -x
read -p "enter a number:" number
case ${#number} in
	4)
		case ${#number} in
		4)
			echo "unit"
			temp=$((number%10))
			echo "$temp"
			number=$((number/10))
						;;
		esac
		case ${#number} in
		3)
			temp=$((number%10))
			echo "$temp-ten"
			number=$((number/10))
						;;
		esac
	 	case ${#number} in
     		 2)
	      		temp=$((number%10))
      			echo "$temp-hundred"
      			number=$((number/10))
						;;
		esac
		case ${#number} in
      		1)
      			temp=$((number%10))
      			echo "$temp-thousand"
      			number=$((number/10))
		;;
		esac
	;;
	3)
		case ${#number} in
		3)
		 	 temp=$((number%10))
     			echo "$temp-unit"
     			 number=$((number/10))
						;;
		esac
		case ${#number} in
     		2)
		      temp=$((number%10))
		      echo "$temp-ten"
      			number=$((number/10))
						;;
		esac
		case ${#number} in
		1)
     		 temp=$((number%10))
     		 echo "$temp-ten"
      		number=$((number/10))
		;;
		esac
	;;
	2)
   		case ${#number} in
      		2)
      		temp=$((number%10))
      		echo "$temp-unit"
      		number=$((number/10))
					;;
 		esac
		case ${#number} in
		1)
      		temp=$((number%10))
      		echo "$temp-ten"
      		number=$((number/10))
		;;
		esac
	;;
	1)
		echo "$numberunit"
	;;
	*)
		echo"out of range"
	;;
esac

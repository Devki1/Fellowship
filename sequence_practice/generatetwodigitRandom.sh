random1=$((RANDOM % 90 + 10))
echo $random1
random2=$((RANDOM % 90 + 10))
echo $random2
random3=$((RANDOM % 90 + 10))
echo $random3
random4=$((RANDOM % 90 + 10))
echo $random4
random5=$((RANDOM % 90 + 10))
echo $random5
sum=$(($random1 + $random2 + $random3 + $random3 + $random4 + $random5))
echo "sum of five random no" $sum
average=`echo "scale=2; $sum / 5" | bc`
echo "average of five digit Random no" $average

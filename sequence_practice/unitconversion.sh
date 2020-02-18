onefeet=12
echo "42 inchs in feet is:"
echo "scale=3; 42/$onefeet" | bc -l
length=60
breadth=40
area=$length*$breadth
echo "area in meter"
echo "scale=5;$area*0.3048" | bc -l
echo "area of 25 plots in acers is:"
echo "scale=8; $area*25*0.3048*0.000247105" | bc -l


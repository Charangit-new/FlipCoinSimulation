echo "Welcome to Flip Coin Simulation Program"
read -p "Enter no of times for the loop to be executed " n
echo "Random no when Head wins=1"
echo "Random no when Tail Wins=0"
for ((i=1;i<=n;i++))
do
	random=$(( RANDOM%2 ))
	if [ $random -eq 1 ]
	then ((h++))
	else ((t++))
	fi
done
echo "Head wins : $h times"
echo "Tail wins : $t times"

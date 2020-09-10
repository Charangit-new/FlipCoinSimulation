echo "Welcome to Flip Coin Simulation Program"
read -p "Enter no of times for the loop to be executed " n
read -p "Enter the conditiion upto which either Head or Tail have won " c
echo "Random no when Head wins=1"
echo "Random no when Tail Wins=0"
pr=0
ti=0
	if [ $c -ge $n ]
	then
	pr=1
        echo "No of times Loop exexcuted is less than or equal to condition provided"
	fi

if [ ! $pr -eq 1 ]
then
for ((i=1;i<=n;i++))
do

	random=$(( RANDOM%2 ))
	if [ $random -eq 1 ]
	then ((h++))
	else ((t++))
	fi

	if [[ $h -ge $c ]] || [[ $t -ge $c ]]
	then
		if [ $h -gt $t ]
		then 	if [ ! $ti -eq 1 ]
			then
			echo "Head wins by $((h-t)) times"
			break
			else ((ht++))
			fi
		elif [ $h -eq $t ]
		then echo "It's a tie"
				ti=1
		else
			if [ ! $ti -eq 1 ]
			then
			echo "Tail wins by $((t-h)) times"
			break
			else
			((tt++))
			fi
		break
		fi
	fi

	y=$((ht-tt))
		if [ $y -eq 2 ]
		then echo "When Tie then Head wins by two points"
		break
		elif [ $y -eq -2 ]
		then echo "When tie then Tails wins by two points"
		break
		fi
done
fi

echo "Welcome to Flip Coin Simulation Program"
random=$(( RANDOM%2 ))
if [ $random -eq 1 ]
then echo "Head wins"
else echo "Tail wins"
fi

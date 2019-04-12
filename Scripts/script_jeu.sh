#!/bin/bash

#Constantes

numberToFind=$(((RANDOM % 1000) + 1))
numbrerProposed=0
numberOfTry=0

#Fonction
usage(){
	echo ""
	echo "$0 : Makes you find a number between 1 and 1000, expects an integer"
    echo ""
    return 0
	}

#main
read numberProposed

if [[ "$numberProposed" =~ ^[0-9]+$  ]] 2> /dev/null
	then 
		while test  $numberProposed != $numberToFind 
			do
				if test $numberProposed -lt $numberToFind 2> /dev/null
					then
						echo "Your number is less than expected"
						((numberOfTry++))
				elif test $numberProposed -gt $numberToFind 2> /dev/null
					then
						echo "Your number is greater than expected"
						((numberOfTry++))
				else
					echo "You didn't follow the rules, did you ?"
				fi
			read numberProposed
			done
	else
		echo "You didn't follow the rules, did you ?"
fi

if test $numberProposed -eq $numberToFind 2> /dev/null
	then
		echo "You found the number ! Gratz ! It took you $numberOfTry tries !"
fi

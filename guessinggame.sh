#!/usr/bin/env bash
#guessinggame.sh

function take_a_guess() {
    echo -n "Your guess: "
    read guess
    
    while true
    do 
        if [[ ! $guess =~ ^[0-9]+$ ]]; then #sanity check
            echo -n "Please enter a valid number: "
        else
            guess=10#$guess #base 10
            if [[ $guess -lt 0 ]]; then #overflow check
                echo -n "Integer overflow! Try a smaller number: "
            else
                break
            fi  
        fi
        read guess 
    done
}


target=$(ls -A | wc -l) #include hidden files

echo "How many files are in current directory?"
take_a_guess

while [[ $guess -ne $target ]]
do
    if [[ $guess -gt $target ]]
    then
        echo "Too high"
    else
        echo "Too low"
    fi
    take_a_guess
done

echo "Congratulations!"

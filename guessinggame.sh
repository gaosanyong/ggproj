#!/usr/bin/env bash
#guessinggame.sh

function take_a_guess() {
    echo -n "Your guess: "
    read guess
    
    #sanity check for valid number
    while true
    do 
        if [[ ! $guess =~ ^[1-9][0-9]*$ ]] 
        then
            echo -n "Please enter a valid number: "
        elif [[ $guess -lt 0 ]] 
        then
            echo -n "Integer overflow! Try a smaller number: "
        else
            break
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

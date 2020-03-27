#!/usr/bin/env bash
#guessinggame.sh

###########################################################
# Interactively guess number of files in current directory
# Globals:
#   None
# Arguments: 
#   None
# Outputs:
#   Message of correct/incorrect guess
# Return:
#   None
###########################################################
function game() {
    local target=$(ls -1q | wc -l)

    echo "How many files are in current directory?"
    echo -n "Your guess: "
    read guess

    while [[ $guess -ne $target ]]
    do
        if [[ $guess -gt $target ]]
        then
            echo "Too high"
        else
            echo "Too low"
        fi
        echo -n "Your guess: " 
        read guess
    done
    
    echo "Congratulations! You got it."
}

game $@

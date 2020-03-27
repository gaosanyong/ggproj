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
    read guess

    while [[ $guess -ne $target ]]
    do
        if [[ $guess -gt $target ]]
        then
            echo "Too high; please try again"
        else
            echo "Too low; please try again"
        fi
        read guess
    done

    echo "Congratulations!"
}

game $@

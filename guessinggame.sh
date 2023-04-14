#!/usr/bin/env bash

function guessinggame(){
    number_of_files=$(ls | wc -l)
    while true;
    do
        echo "Number of files:"
        read  user_guess
        if [ $user_guess -lt $number_of_files ]
        then
            echo "the number of files is higher than that"
        elif [ $user_guess -gt $number_of_files ]
        then
            echo "The number of files is lower than that"
        else
            echo "Congratulations, it is the good number!"
            break;
        fi
    done
}

echo "Guess how many files are there in current directory?"
guessinggame

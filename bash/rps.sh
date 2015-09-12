#!/bin/bash

# ignore string case
shopt -s nocasematch

# seed random number generator
# source: http://stackoverflow.com/questions/2388488/select-a-random-item-from-an-array
RANDOM=$$$(date +%s)

# associative arrays not implemented until bash 4.0,
# so fake it using two separate arrays
choices=("rock" "paper" "scissors")
beats=("scissors" "rock" "paper")

# play until someome wins
while true; do
  # calculate the computer move first, no cheating
  computer_move=$(expr $RANDOM % ${#choices[@]})

  # get player move, must be valid
  while true; do
    read -p "Your Move: " input
 
    # validate user input
    for key in ${!choices[@]}; do
      if [[ $input == ${choices[$key]} ]]; then
        human_move=$key
        break 2
      fi
    done
  done

  # calculate winner
  if [ $human_move == $computer_move ]; then
    echo "Tie, Replay!\n"
  elif [ ${beats[$human_move]} == ${choices[$computer_move]} ]; then
    echo "You Win!\n"
    break
  elif [ ${beats[$computer_move]} == ${choices[$human_move]} ]; then
    echo "Computer Wins!\n"
    break
  fi
done

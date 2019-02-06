#!/bin/bash
function guess() {
  echo "how many files are in the current directory?"
  read response

}
no_of_files=$(ls -l | wc -l)
guess
while [[ t ]]; do
  if [[ $response =~ ^[0-9]+$ ]]; then
    if [[ $response -eq $no_of_files ]];
     then
       echo "congrats, you won"
       exit 1
     elif [[$response -lt $no_of_files  ]]; then
       echo "too Low, guess again"
       guess
     else
       echo "too High, guess again"
       guess
     fi
  else
    echo "not a number please enter a number"
    guess
  fi
done




# echo "you win"

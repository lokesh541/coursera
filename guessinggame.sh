function guess() {
  echo "how many files are in the current directory?"
  read response
}
no_of_files=$(ls -a | wc -l)
guess

while [[ $response -ne $no_of_files ]];
do
  if [[ $response = ~^[0-9]+$ ]]; then
    #statements
    echo "not a number, please enter an integer"
    guess

  else

    if [[ $response -lt $no_of_files ]];
    then
      echo "too low, guess again"
      guess
    else
      echo "too High, guess again"
      guess
    fi
  fi


done
echo "you win"

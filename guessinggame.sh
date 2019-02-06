function guess() {
  echo "how many files are in the current directory?"
  read response
}
no_of_files=$(ls | wc -l)
guess

while [[ $response -ne $no_of_files ]]; 
do
  if [[ $response -lt $no_of_files ]]; 
  then
    echo "too low, guess again"
    guess
  else
    echo "too High, guess again"
    guess
  fi

done
echo "you win"

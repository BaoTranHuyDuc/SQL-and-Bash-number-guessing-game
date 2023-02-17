#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --no-align --tuples-only -c"
NUMBER=$(( $RANDOM % 1000 + 1 ))
echo $NUMBER
#get username

echo Enter your username:
read NAME
USERNAME=$($PSQL "SELECT username FROM number_guess WHERE username='$NAME'")
if [[ -n $USERNAME ]]
then
  GAMES_PLAYED_FOR_WELCOME=$($PSQL "SELECT games_played FROM number_guess WHERE username='$NAME'")
  BEST_GUESS_FOR_WELCOME=$($PSQL "SELECT best_guess FROM number_guess WHERE username='$NAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED_FOR_WELCOME games, and your best game took $BEST_GUESS_FOR_WELCOME guesses."
else
  INSERT_NEW_USERNAME=$($PSQL "INSERT INTO number_guess(username) VALUES('$NAME')")
  echo "Welcome, $NAME! It looks like this is your first time here."
fi

#guess the number
echo Guess the secret number between 1 and 1000:
NUMBER_OF_GUESS=0
GUESSED=true
while [[ $GUESSED = true ]]
do
  read GUESS_NUMBER
  NUMBER_OF_GUESS=$(( $NUMBER_OF_GUESS+1 ))
  if [[ $GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    if [[ $GUESS_NUMBER -gt $NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    elif [[ $GUESS_NUMBER -lt $NUMBER ]]
    then
      echo "It's higher than that, guess again:"
    else
      echo "You guessed it in $NUMBER_OF_GUESS tries. The secret number was $NUMBER. Nice job!"
      GUESSED=false
    fi 
  else
    echo That is not an integer, guess again:
  fi
done

#Update games played and best time
GAMES_PLAYED=$($PSQL "SELECT games_played FROM number_guess WHERE username='$NAME'")
NEW_GAMES_PLAYED=$(( $GAMES_PLAYED+1 ))
UPDATE_GAMES_PLAYED=$($PSQL "UPDATE number_guess SET games_played=$NEW_GAMES_PLAYED WHERE username='$NAME'")

#Update best guess
BEST_GUESS=$($PSQL "SELECT best_guess FROM number_guess WHERE username='$NAME'")
if [[ -z $BEST_GUESS ]]
then
  UPDATE_BEST_GUESS=$($PSQL "UPDATE number_guess SET best_guess=$NUMBER_OF_GUESS WHERE username='$NAME'")
else
  if [[ $NUMBER_OF_GUESS -lt $BEST_GUESS ]]
  then
    UPDATE_BEST_GUESS=$($PSQL "UPDATE number_guess SET best_guess=$NUMBER_OF_GUESS WHERE username='$NAME'")
  fi
fi

#!/bin/bash

# Guess the Number Game

# Description: A fun game where the user guesses a randomly generated number.

echo "Welcome to the Guess the Number Game!"
echo "--------------------------------------"
echo "I'm thinking of a number between 1 and 10."
echo "Can you guess what it is?"

# Generate a random number between 1 and 100
TARGET=$((RANDOM % 10 + 1))

# Initialize variables
GUESSES=0
GUESS=0

# Game loop
while [[ "$GUESS" -ne "$TARGET" ]]; do
    read -p "Enter your guess: " GUESS
    
    # Increment guess counter
    ((GUESSES++))
    
    # Check the guess
    if [[ "$GUESS" -lt "$TARGET" ]]; then
        echo "Too low! Try again."
    elif [[ "$GUESS" -gt "$TARGET" ]]; then
        echo "Too high! Try again."
    fi
done

# Congratulate the user
echo "Congratulations! You guessed the number $TARGET in $GUESSES attempts!"
echo "Thanks for playing!"


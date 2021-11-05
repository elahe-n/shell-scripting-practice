#! /usr/bin/env bash

# Define functions to Add and subtract

add() {
    let total=$1+$2
    echo "**** The result of adding $1 and $2 is $total ****"  
}

subtract() {
    let result=$1-$2
    echo "***  The result of subtracting $1 and $2 is $result  ***"  
}

# When the program is first loaded, display a greeting to the user.

echo "**** Welcome to my calculator program usin shell scripting :) ****"

# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit

while true; do
    echo "Please make a choice:      Add/+       Subtract/-       Exit   "

# Then, capture the user selection. 
# Change user input to lowercase to have interity in inputs and put it in new variable named operation.
    read input
    operation=${input,,}

# If the selection matches a supported operation, execute the operation.

# If the selection does not match a support operation, display an error message.
# When the operation is complete, redisplay the menu.

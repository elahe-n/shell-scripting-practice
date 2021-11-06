#! /usr/bin/env bash

# Define functions to Add and subtract

add() {
    total=`echo $1 + $2 | bc`
    echo "**** The result of adding $1 and $2 is $total ****"  
}

subtract() {
    result=`echo $1 - $2 | bc`
    echo "**** The result of subtracting $1 and $2 is $result ****"  
}

# When the program is first loaded, display a greeting to the user.

echo "**** Welcome to my calculator program usin shell scripting :) ****"

# Then, display a menu that outlines the possible operations:
  # Add
  # Subtract
  # Exit

while true; do
    echo "****************************************************************"
    echo "Please make a choice:      Add/+       Subtract/-       Exit   "

# Then, capture the user selection. 
# Change user input to lowercase to have interity in inputs and put it in new variable named operation.
    read input
    operation=${input,,}

# If the selection matches a supported operation, execute the operation.
    case $operation in
        "add"| "+")
            echo " ***  We are going to ADD two numbers  *** "
            while true; do
                echo "_ Please enter the first number: "
                read a
                # Validating inputs (for first number): If input field is left blank or other characters except numbers have been entered, display appropriate message and get another input.
                if [ -z "$a" ] || ! [[ "$a" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
                    then 
                        echo 'Ooops, Inputs must be NUMBERS AND cannot be blank. Please try again!' 
                    else
                        break  
                fi 
            done

            while true; do
                echo "_ Please enter the second number: "
                read b
                # Validating inputs (for second number): If input field is left blank or other characters except numbers have been entered, display appropriate message and get another input.
                if [ -z "$b" ] || ! [[ "$b" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
                    then 
                        echo 'Oops, Inputs must be NUMBERS AND cannot be blank. Please try again!'
                    else
                        break 
                fi 
            done

            add $a $b
        ;;
        "subtract"| "-")
            echo "*** We are going to SUBTRACT two numbers ***"
            while true; do
                echo "_ Please enter the first number: "
                read a
                # Validating inputs (for first number): If input field is left blank or other characters except numbers have been entered, display appropriate message and get another input.
                if [ -z "$a" ] || ! [[ "$a" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
                    then 
                        echo 'Ooops, Inputs must be NUMBERS AND cannot be blank. Please try again!' 
                    else
                        break  
                fi 
            done

            while true; do
                echo "_ Please enter the second number: "
                read b
                # Validating inputs (for second number): If input field is left blank or other characters except numbers have been entered, display appropriate message and get another input. 
                if [ -z "$b" ] || ! [[ "$b" =~ ^[+-]?[0-9]+\.?[0-9]*$ ]] 
                    then 
                        echo 'Oops, Inputs must be NUMBERS AND cannot be blank. Please try again!'
                    else
                        break 
                fi 
            done
            
            subtract $a $b
        ;;
        # If user select exit to stop the program:        
        "exit")
            echo "Bye, now we are leaving, see you soon..."
            break
        ;;

# If the selection does not match a support operation, display an error message.
        *)
                    echo "Sorry, your entry is not in our options, Please try again..."
                ;;
      
    esac
    
# When the operation is complete, redisplay the menu.
# With the help of WHILE loop, if operation is complete, the menu redisplay.
done
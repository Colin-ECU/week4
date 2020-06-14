#!/bin/bash
 
       tooLow()
 {
        echo -e "\033[31mToo_Low:\033[0m $1"
 }
 
       tooHigh()
 {
        echo -e "\033[31mToo_High:\033[0m $1"
 }
       # The $1 represets the first variable - which is the useers input.
       # The below loop will return a response to advise ht e user number is too low above 42. 
       getNumber()
 {
     read -p "$1: "
     while (( $REPLY < $2 )); do
         #print error "Input must be higher"
         tooLow "Too low try again"   
         read -p "$1: "

       # The below loop will return a response to advise ht e user number is too high above 42.    
    done
 
    while (( $REPLY > $2 )); do
         #print error "Input must be lower"
         tooHigh "Too high try again"
         read -p "$1: "
         
    done
 }
       # in the below text, Week 5 sed changed 2nd echo from select to choose.

       echo "This is a Guessing Game"
       echo "The rule is you choose a number between 1 and 100!"
       echo "To Win, you need to pick the Magic number"
       getNumber "please type your guess now: " 42 
       echo "YOU WIN!!! Thank you for playing"

       # The user should be asked to enter a number between 1 and 100.
       # If the number is 42, the game should print 'Correct!'.
       # If the number is less than 42, the game should print 'Too Low!'
       # If the number is greater than 42, the game should print 'Too High!'
       # The game should repeat until the user has found the correct number


 
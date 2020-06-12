#!/bin/bash
 
 tooLow()
 {
        echo -e "\033[31mToo_Low:\033[0m $1"
 }
 
 tooHigh()
 {
        echo -e "\033[31mToo_High:\033[0m $1"
 }
 
 #This function will return error if value < 42 (1st argument)
 getNumber()
 {
     read -p "$1: "
     while (( $REPLY < $2 )); do
         #print error "Input must be higher"
         tooLow "Too low try again"   
         read -p "$1: "
         
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
 getNumber "please type your guess now" 42 
 echo "YOU WIN!!! Thank you for playing"
 
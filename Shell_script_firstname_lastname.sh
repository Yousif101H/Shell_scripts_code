#! /bin/bash

#Ask the user to enter his first name
echo -n "Please enter your first name:"

#Use read to enter a name and save it under the 
#bash variable $firstname

read firstname

#Now ask the user to enter his last name

echo -n  "Please enter your last name:"

read lastname

#print a greet message of the end-user

echo "Hello $firstname $lastname"

#out
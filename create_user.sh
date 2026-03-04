#!/bin/bash

<<help

this is a shell script to 
create a new user 

help

echo "Creation of user "

read -p "enter the username:" username

read -p "enter the password:" password


sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"


echo "======= creatiotion of user completed ========"


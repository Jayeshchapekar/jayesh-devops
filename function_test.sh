#!/bin/bash
#
<<help
the is an expalition of functions

help

function create_user {

read -p "enter the username:" username

sudo useradd -m $username

echo "user is created"

}

for ((i=1 ; i<=5 ; i++))
do
	create_user
done

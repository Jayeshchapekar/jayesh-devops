#!/bin/bash

<< help

this script check if a user exists or not
help

read -p "enter a username you want to check" username

count=$(cat /etc/passwd |grep $username |wc |awk '{print$1}')

echo "$count"

if [ $count == 0 ];
then
	echo "user does not exist"
else
	echo "user exist"
fi

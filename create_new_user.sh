#!/bin/bash
#
function create_new_users {
read -p "enter the username:" username
read -p "enter the password :" password

echo "creating a user"

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "creation of user successfull"

sudo userdel "$username"

echo " user deleted "

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then 
	echo " wc is 0 the user is deleted"
else 

	echo "the user is not deleted"
fi

}

create_new_users


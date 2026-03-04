#!/bin/bash


create_user() {

    read -p "Enter the new username: " username

    if id "$username" &>/dev/null; then
        echo "Error: The username '$username' already exists."
        exit 1
    fi

    read -s -p "Enter the password for $username: " password
    echo

    sudo useradd -m "$username"

    echo "$username:$password" | sudo chpasswd

    echo "User account '$username' created successfully."

}
create_user

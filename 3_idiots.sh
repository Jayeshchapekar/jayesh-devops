#!/bin/bash
#
hero="rancho"

villain="virus"

echo "3 idiots hero is $hero"

echo "3 idiots villain is $villain"


# shell / environment variable are (pre-defined)


echo "current logged in user $USER"
 

#user input
read -p "rancho ka pura namm kya tha " fullname


echo "rancho ka pura namm $fullname tha"

#arguments

# ./3_idiots.sh raju farhan rancho


echo "movie ka naam: $0"

echo "first idiot: $1"

echo "second idiot: $2"

echo "third idiot: $3"

echo "the total number of idiots $#"

echo "hence the 3 idiots are $@"

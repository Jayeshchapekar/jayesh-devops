#!/bin/bash

<<help
loop : anything that you want to reapeat again and again based on conditions 
for loop conditions

1..10

start = 1
end =10
incriment/decrement =+ /-


help

for ((num=1 ; num<=10 ; num++))
do
	echo "$num"
	echo "hello_jay"

done



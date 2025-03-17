#!/bin/bash

ARGUM=$#
# Want only the first digit from argument 1
OPER=${1:0:1} 
NUM1=$2
NUM2=$3

# Function for adding
funca () {
	ANSWER=$(( $NUM1 + $NUM2 ))
}
# Function for substracting
funcs () {

	ANSWER=$(( $NUM1 - $NUM2 ))
}
# Function for multiplying
funcm () {
	ANSWER=$(( $NUM1 * $NUM2 ))
}
# Function for dividing
funcd () {
	ANSWER=$(( $NUM1 / $NUM2))
}
# Check if there are 3 argument, check if 1st argument is a,s,m,d, check if 2nd and 3rd argument are numbers.
if [[ $ARGUM -eq 3 ]] && [[ $OPER =~ [asmd] ]] && [[ $NUM1 =~ ^[0-9]+$ ]] && [[ $NUM2 =~ ^[0-9]+$ ]]; then
	func$OPER
	echo The answer is: $ANSWER
else
	echo Need 3 arguments. Provide operation a, s, m or d and two numbers.
fi

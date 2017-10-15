#!/bin/bash

#Declare an array of 4 elements
ARRAY=('Mint' 'Ubuntu' 'Arch' 'Kali')

# Number of elements in the array
NUMBER=${#ARRAY[@]}

# echo each element in the array
for ((i=0; i<$NUMBER;i++)); do
	echo ${ARRAY[${i}]}
done

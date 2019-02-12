#!/bin/bash
barcalona=( messi surez vidal )

echo  "please pick from this list [${barcalona[*]}]"

if [[ "$1"  = "${barcalona[0]}" ]]
then

echo "you picked messi"
elif [[ "$1" = "${barcalona[1]}" ]]
then
echo "you picked surez"
elif [[ "$1" = "${barcalona[2]}" ]]
then
echo "you picked vidal"

fi





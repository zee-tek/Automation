#!/bin/bash

echo "####### Empty File List ####### "
ls $1|while read line
do
if [[ ! -s $line ]]
then
echo -e " \t$line "
fi
done

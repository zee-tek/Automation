#!/bin/bash
default_c="\e[0m"
cyan_c="\e[36m"
green_c="\e[92m"
echo -e "${cyan_c}####### Empty File List #######${default_c}"

ls $1|while read line
do
if [[ ! -s $line ]]
then
echo -e "${green_c} \t$line${default_c}"

fi
done

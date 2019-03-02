#!/bin/bash
<<Description
  Scirpt is made to remove matching values exist in two files.
Description

<<Usage
echo "Usage: please provide full list in file1 one and file2 should contain the content u want to remove from file1"
Usage
default_c="\e[0m"
green_c="\e[92m"
red_c="\e[31m"

read -p 'Please provide file with full list: ' file1
read -p 'Please provide exclusion list of file: ' file2

cat ${file2}|while read line
do
   sed -i "/$line/Id" ${file1}
done
if [ $? -eq 0 ]
then

echo -e "${green_c}Succesful Exclusion${default_c}\n"
echo -e "${green_c}No More matching content of file2 exist in file1${default_c}"
fi

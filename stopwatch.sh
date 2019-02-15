#!/bin/bash
echo "Your Time starts now"
i=$1
until [ $i -eq 0 ]
do
echo "$i sec"
i=$(( i-1 ))
sleep 2
done
echo "your time is over"

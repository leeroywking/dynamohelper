#!/bin/bash

while read file 
do
bash loop.sh /paste/cleaned/"$file"
echo "done with $file " | wall 
done < list.txt
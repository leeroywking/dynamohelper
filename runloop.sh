#!/bin/bash

while read file 
do
bash loop.sh /paste/"$file"
echo "done with $file " | wall 
done < list.txt
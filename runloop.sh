#!/bin/bash

while read file 
do
bash loop.sh "$file"
done < list.txt
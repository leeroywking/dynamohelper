#!/bin/bash

while read file 
do
bash loop.sh /paste/cleaned/"$file"
done < list.txt
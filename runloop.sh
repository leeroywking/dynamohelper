#!/bin/bash

while read file 
do
bash loop.sh /paste/"$file"

done < list.txt
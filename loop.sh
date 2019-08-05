#!/bin/bash

while read line
do
	IFS=':' read -ra array <<< "$line";
		aws dynamodb put-item \
		--table-name usepa \
		--item '{
			"user": {
			"S": "`echo ${array[0]}`"
			},
			"pass": {
			"S": "`echo ${array[1]}`"
			}
		}'
	# `echo ${array[0]}`
done < ./*.txt


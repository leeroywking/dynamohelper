#!/bin/bash

while read line
do
	IFS=':' read -ra array <<< "$line";
	a='{"user": {"S": "'
	b=${array[0]}
	c='"},"pass": {"S": "'
	d=${array[1]}
	e='"}}'
	f="$a$b$c$d$e"
	echo "'$f'"
		aws dynamodb put-item \
		--table-name usepa \
		--item "$f"
done < $1


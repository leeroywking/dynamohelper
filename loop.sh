#!/bin/bash

while read line
do
	IFS=':' read -ra array <<< "$line";
	a='{"PutRequest": {"Item": {"user": {"S": "'
	b=${array[0]}
	c='"},"pass": {"S": "'
	d=${array[1]}
	e='"}}}},'
	f="$a$b$c$d$e"
	echo "$f" >> $2.json
		# aws dynamodb put-item \
		# --table-name usepa \
		# --item "$f" &
done < $1


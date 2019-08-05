#!/bin/bash

for I in `cat /paste/*.txt` do

aws dynamodb put-item \
	--table-name usepa \
	--item '{
	"user": {
	"S": "$1"
},
"pass": {
"S": "$2"
}
}'


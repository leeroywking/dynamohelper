#!/bin/bash

aws dynamodb put-item \
	    --table-name usepa \
	        --item '{
		  "user": {
		      "S": "user1"
		        },
		  "pass": {
		      "S": "passpass"
		        }
	}'

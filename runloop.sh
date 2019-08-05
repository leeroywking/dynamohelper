#!/bin/bash

while read file 
do
echo $file
echo '{"usepa": [' >> $file.json
bash loop.sh $file $file
# bash loop.sh /paste/cleaned/"$file" $file
sed '$ s/,$//g' $file.json > $file.next.json
echo ']}' >> $file.next.json
aws dynamodb batch-write-item --request-items file://$file.next.json
done < $1
while read file
do
tr < /paste/$file -d '\000' > /paste/cleaned/$file
done < list.txt                                                
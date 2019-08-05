while read file
do
echo "removing rando bytes from  $file"
tr -cd '[:alnum:]'< /paste/$file > /paste/cleaned/$file
echo "done removing null bystes from $file"
done < list.txt                                               
while read file
do
echo "removing rando bytes from  $file"
tr -cd '\11\13\14\15\40-\176'< /paste/$file > /paste/cleaned/$file
echo "done removing null bystes from $file"
done < list.txt                                               
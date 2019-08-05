while read file
do
echo "removing rando bytes from  $file"
tr -cd '[:alnum:]'< /paste/$file > /paste/cleaned/$file
echo "done removing null bystes from $file"
echo "validating with dos2unix"
dos2unix /paste/cleaned/$file
echo "done validating"
done < list.txt                                               
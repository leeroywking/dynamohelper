while read file
do
echo "removing rando bytes from  $file"
# tr '\r' '\n' < /paste/$file > /paste/cleaned/$file
tr -cd '[:print:]'< /paste/$file > /paste/cleaned/$file
echo "done removing null bystes from $file"
echo "validating with dos2unix"
dos2unix /paste/cleaned/cleaner/$file
echo "done validating"
done < list.txt                                               
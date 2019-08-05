while read file
do
echo "removing null bytes from  $file"
tr < /paste/$file -d '\000' > /paste/cleaned/$file
echo "done removing null bystes from $file"
done < list.txt                                                
if we use "cat >" then the file will be overwritten


echo -e "enter file name: \c "
read file

if [ -f $file ]
then
	if [ -w $file ]
	then
		echo "type text. To quit press ctrl+d."
		cat >> $file
	else
		echo "$file does not have writing permission"
	fi

else
	echo "$file does not exist"
fi
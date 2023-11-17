filetest operator

-r --> to check that file has read access
-w --> to check that file has write access
-x --> to check that file has execute access
-f --> to check that file is special or not
-d --> to check that file is directory 
-s --> to check that file size is zero or not
-e --> to check that file exists ot not



#! /bin/sh

echo -e "enter file name: \c "
read file

if [ -r $file ]
then
	echo "$file has read access"
else
	echo "$file does not have read accss"
fi


if [ -w $file ]
then
	echo "$file has write access"
else
	echo "$file does not have write access"
fi

if [ -x $file ]
then
	echo "$file has execute access"
else
	echo "$file does not have execute access"
fi

if [ -f $file ]
then
	echo "$file is an ordianry file"
else
	echo "$file is specieal file"
fi

if [ -d $file ]
then
	echo "$file is a directory"
else
	echo "$file is not a directory"
fi

if [ -s $file ]
then
	echo "$file size is not zero"
else
	echo "$file size is zero"
fi

if [ -e $file ]
then
	echo "$file exists"
else
	echo "$file does not exist"
fi
# suntax-1:
for i in 1 2 3 4 5 6 ....... N
do
	command1
    command2
    command3
    ...
done

# for example:
for i in 1 2 3 4 5 6 7 8 9 10
do
    echo $i
done

for i in {1..10..2} # {start..end..increament}
do
	echo $i
done

"..................................................................................."

# syntax-2:
for i in file1 file2 file3 ....... fileN
do
	command1
    command2
    command3
    ...
done

# for example:
for i in ip_change.sh mac_change.sh
do
	echo ".......................$i..............................."
	cat $i
	echo
done

"..................................................................................."

# syntax-3:
for i in $(linux-command)
do
	command1
    command2 
    command3
    ...
done

# for example:
for i in ls pwd date
do
    echo ".............$i..............."
    $i
    echo
done

# to obtain all files
for i in *
do
	if [ -f $i ]
	then
		echo $i
	fi
done

# to obtain all folders
for i in *
do
	if [ -d $i ]
	then
		echo $i
	fi
done

"..................................................................................."

# syntax-4:
for (( EXP1; EXP2; EXP3 ))
do
	command1
    command2
    command3
    ...
done

# for example:
for (( i=0; i<=10; i++ ))
do
    echo $i
done
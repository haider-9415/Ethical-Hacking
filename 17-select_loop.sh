# it is used to take input from user showing the manu

# syntax:
select i in option1 option2 option3 ....... optionN
do
    command1
    command2
    ...
done


# for example:

select char in cold-drink ice-cream biryani
do
	if [ $char == "cold-drink" ]
	then
		echo "it is to drink"
	elif [ $char == "ice-cream" ]
	then
		echo "it is to eat"
	elif [ $char == "biryani" ]
	then
		echo "it is also to eat"
	else
		echo "invalid input"
		break
	fi
done



select char in cold-drink ice-cream biryani
do
	case $char in
	cold-drink ) echo "it is to drink"
	;;
	ice-cream ) echo "it is to eat"
	;;
	biryani ) echo "it is also to eat"
	;;
	* ) echo "Unknown input"; break
	esac
done
#welcome  to Employee Wage Computation program
#checking daily employee is present or absent
echo "1-for daily employee, 2-for part time employee"
read -p "enter the number to know about employee:" num
case $num in

	1) if(($((RANDOM%2))==0))
	then
		echo "daily_employee is present"
		echo "todays wage:" $((20*8))
	else
		echo "daily-emloyee is absent"
		echo 	"todays wage is zero:"
	fi
	;;
#checking parttime employee is present or absent

	2) if(($((RANDOM%2))==0))
        then
                echo "part_time employee is present"
                echo "todays wage:" $((20*8))
        else
                echo "part_time employee is absent"
                echo    "todays wage is zero:"
        fi
	;;
	*) echo "invalid input - number must be 0 or 1"
esac

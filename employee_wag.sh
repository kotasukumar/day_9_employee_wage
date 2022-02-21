#welcome  to Employee Wage Computation program
#checking daily employee is present or absent
	if(($((RANDOM%2))==0))
	then
		echo "daily_employee is present"
		echo "todays wage:" $((20*8))
	else
		echo "daily-emloyee is absent"
		echo 	"todays wage is zero:"
	fi
#checking parttime employee is present or absent

	if(($((RANDOM%2))==0))
        then
                echo "part_time employee is present"
                echo "todays wage:" $((20*8))
        else
                echo "part_time employee is absent"
                echo    "todays wage is zero:"
        fi

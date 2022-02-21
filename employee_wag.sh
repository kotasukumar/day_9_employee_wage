#welcome  to Employee Wage Computation program

#checking regular employee is present or absent
echo "1-for regular employee, 2-for part time employee"
read -p "enter the number to know about employee:" num
monthly_wage=0
case $num in
	1) for((i=0;i<=20;i++))
	do
		if(($((RANDOM%2))==0))
		then
			echo "day $i regular_employee is present"
				daily_wage=$((20*8))
				monthly_wage=$((monthly_wage+$daily_wage))
			echo "todays wage:" $daily_wage
		else
			echo "day $i regular_emloyee is absent"
			echo 	"todays wage is zero:"
		fi
	done
                	echo " monthly wage of the regular employee is:" $monthly_wage
	;;
#checking parttime employee is present or absent

	2)  for((i=0;i<=20;i++))
        do
		if(($((RANDOM%2))==0))
        	then
                	echo "part_time employee is present"
                                daily_wage=$((20*8))
                                monthly_wage=$((monthly_wage+$daily_wage))
                        echo "todays wage:" $((20*8))
		else
                	echo "part_time employee is absent"
                	echo    "todays wage is zero:"
        	fi
	done
                        echo " monthly wage of the part time employee is:" $monthly_wage
	;;
	*) echo "invalid input - number must be 0 or 1"
esac

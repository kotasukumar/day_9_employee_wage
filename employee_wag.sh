#welcome  to Employee Wage Computation program

#checking regular employee is present or absent
echo "1-for regular employee, 2-for part time employee"
read -p "enter the number to know about employee:" num
monthly_wage=0
weekend=$((20*8*10))
i=0
day=0
hours=0
case $num in
	1) for((i=0;i<=20;i++))
	do
		if(($((RANDOM%2))==0))
		then
				daily_wage=$((20*8))
				monthly_wage=$((monthly_wage+$daily_wage))
					salary[$i]=$daily_wage
					day1[$i]=$i
               			((day++))
                		hours=$((hours+8))
		else
				salary[$i]=0
				day1[$i]=$i

		fi
	done
		echo "day - daily_wage"
		for((i=0;i<=20;i++))
		do
			echo ${day1[i]}" - " ${salary[i]}
		done
			echo "working hours in a month are: " $hours
			echo " monthly wage of the regular employee is:" $(($monthly_wage+$weekend))
	;;
#checking parttime employee is present or absent

	2)  for((i=0;i<=20;i++))
        do
		if(($((RANDOM%2))==0))
        	then
                                daily_wage=$((20*8))
                                monthly_wage=$((monthly_wage+$daily_wage))
                        		salary[$i]=$daily_wage
					day1[$i]=$i
                                ((day++))
                                hours=$((hours+8))
		else
                		salary[$i]=0
				day1[$i]=$i
        	fi
	done
                echo "day - daily_wage"
                for((i=0;i<=20;i++))
                do
                        echo ${day1[i]}" - " ${salary[i]}
                done

			echo "woking hours in a month are:" $hours
                        echo "monthly wage of the part time employee is:" $(($monthly_wage+$weekend))
	;;
	*) echo "invalid input - number must be 0 or 1"
esac

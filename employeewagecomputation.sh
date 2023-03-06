#!/bin/bash
#Employee Daily Hour = 8 (Full Time)
#Employee working for 5 days in week = 5 * 8 = 40 Hrs.
#Employee Monthly working for 20 days = 5 days in week * 4 weeks = 20 Days


totalSalary=0;
EMPLOYEE_WAGE_PER_HOUR=20;
workingHour=0;

for ((day=1;day<=20;day++))
do
	isPresent=$((RANDOM%3))
	case $isPresent in
		0)
			echo "Employee is Absent";
			workingHour=0;
		;;
		1)
			echo "Employee is Present";
			workingHour=8;
		;;
		2)
			echo "Employee is working as part time";
			workingHour=4;
		;;
	esac

	salary=$(($EMPLOYEE_WAGE_PER_HOUR * $workingHour));
	totalSalary=$(($totalSalary + $salary));
done

echo "Employee has earned $totalSalary USD in a month";
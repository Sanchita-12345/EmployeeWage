#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
isPartTime=2
ratePerHour=20
noOfHours=8
noOfPartTimeHours=4
workDay=20
totalWorkHours=100
checkAttendance=$((RANDOM%3))

function getWorkHour() {

	case $checkAttendance in
		$isPresent)
			echo "Employee present"
			dailyWage=$(($ratePerHour*$noOfHours))
			echo "Daily Wagwe is : " $dailyWage
			totalWage=$(($ratePerHour*$noOfHours*$workDay*$totalWorkHours))
			echo "Total Wage is :" $totalWage
			;;
		$isPartTime)
   		echo "Employee Part Time"
         dailyWage=$(($ratePerHour*$noOfPartTimeHours))
         echo "Daily Wagwe is : " $dailyWage
         totalWage=$(($ratePerHour*$noOfPartTimeHours*$workDay*$totalWorkHours))
         echo "Total Wage is :" $totalWage
         ;;
		*)
			echo "Employee is absent"
			echo "Daily wage is 0"
			echo "Total wage is 0"
			;;
	esac
}
getWorkHour

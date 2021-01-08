#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
isPartTime=2
ratePerHour=20;
noOfHours=8;
noOfPartTimeHours=4
workDay=20
totalWorkHours=100
checkAttendance=$((RANDOM%3))

case $checkAttendance in
	$isPresent)
		echo "Employee present"
		payment=$(($ratePerHour*$noOfHours*$workDay*$totalWorkHours))
		echo "Payment in a month is :" $payment
		;;
	$isPartTime)
   	echo "Employee is PartTime"
		payment=$(($ratePerHour*$noOfPartTimeHours*$workDay*$totalWorkHours))
		echo "Payment in a month is :" $payment
		;;
	*)
		echo "Employee Absent"
		echo "Payment in a month is 0"
		;;
esac

#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
isPartTime=2
ratePerHour=20;
noOfHours=8;
noOfPartTimeHours=4
checkAttendance=$((RANDOM%3))

case $checkAttendance in
	$isPresent)
		echo "Employee present"
		payment=$(($ratePerHour*$noOfHours))
		echo "Payment is :" $payment
		;;
	$isPartTime)
   	echo "Employee is PartTime"
		payment=$(( $ratePerHour * $noOfPartTimeHours ))
		echo "Payment is :" $payment
		;;
	*)
		echo "Employee Absent"
		echo "Payment is 0"
		;;
esac

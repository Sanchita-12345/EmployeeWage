#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
ratePerHour=20;
noOfHours=8;
checkAttendance=$((RANDOM%2))

if [ $isPresent -eq $checkAttendance ]
then
	echo "Employee present"
	payment=$(($ratePerHour*$noOfHours))
	echo "Payment is :" $payment

else
	echo "Employee Absent"
	echo "Payment is 0"
fi

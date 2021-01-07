#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
isPartTime=2
ratePerHour=20;
noOfHours=8;
noOfPartTimeHours=4
checkAttendance=$((RANDOM%3))

if [ $isPresent -eq $checkAttendance ]
then
	echo "Employee present"
	payment=$(($ratePerHour*$noOfHours))
	echo "Payment is :" $payment
elif [ $iPartTime -eq $checkAttendance ]
then
   echo "Employee is Partime"
	payment=$(($ratePerHour*$noOfParTimeHours))
	echo "Payment is :" $payment

else
	echo "Employee Absent"
	echo "Payment is 0"
fi

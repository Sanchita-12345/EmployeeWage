#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
checkAttendance=$((RANDOM%2))

if [ $isPresent -eq $checkAttendance ]
then
	echo "Employee present"
else
	echo "Employee Absent"
fi

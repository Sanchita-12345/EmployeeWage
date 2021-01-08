#!/bin/bash -x
echo "Welcome to the Employee wage program "
isPresent=1
isPartTime=2
checkAttendance=$((RANDOM%3))

function getWorkHour() {

	case $checkAttendance in
		$isPresent)
			workHours=8
			echo "WorkHour is : " $workHours
			;;
		$isPartTime)
   		workHours=4
			echo "WorkHour is : " $workHours
		;;
	*)
		workHours=0
		echo "WorkHour is : " $workHours
		;;
	esac
}
getWorkHour

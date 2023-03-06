#!/bin/bash

PRESENT=1;
isPresent=$((RANDOM%2));

if [ $isPresent -eq $PRESENT ]
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi
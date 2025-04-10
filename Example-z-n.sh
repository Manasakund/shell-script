#!/bin/bash

name=$1
name2=$2

echo $name
echo $name2

if [ -z "$name" ]
then echo first string is null
else
	echo first string is not null
fi

if [ -n "$name2" ]
then echo second string is not null
else
	echo second string is null
fi


#!/bin/bash

for file in *.py
do
    if [[ ! "$file" =~ ^Test ]] && [[ ! "$file" =~ ^Property ]]
    then
	echo  $file
	pylint  --score=y --reports=n $file | grep 'Your code has been'
	echo ' '
    fi
done
#

#end if
#done

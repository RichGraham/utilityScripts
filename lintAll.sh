#!/bin/bash

for file in *.py
do
    if [[ ! "$file" =~ ^Test ]]   && [[ ! "$file" =~ ^Property_Test ]] && [[ ! "$file" =~ ^SupportTests ]]
    then
	echo  $file

	maximumsize=200
	actualsize=$(wc -l <"$file")
	if [ $actualsize -ge $maximumsize ]; then
	    echo !!!!! $actualsize is over $maximumsize lines. Does the class do too many things? !!!!!
	fi

	pylint  --score=y --reports=n $file | grep 'Your code has been'
	echo ' '
    fi
done
#

#end if
#done

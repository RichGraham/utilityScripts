#!/bin/bash

for file in *.py
do
    if [[ ! "$file" =~ ^Test ]]   && [[ ! "$file" =~ ^Property_Test ]] && [[ ! "$file" =~ ^SupportTests ]]
    then
	echo  $file
	
	minimumsize=200
	actualsize=$(wc -l <"$file")
	if [ $actualsize -ge $minimumsize ]; then
	    echo !!!!! $actualsize is probably too many lines. Does the class do too many things? !!!!!
	fi
	
	pylint  --score=y --reports=n $file | grep 'Your code has been'
	echo ' '
    fi
done
#

#end if
#done

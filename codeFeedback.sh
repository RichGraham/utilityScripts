lintAll.sh
echo '====Complexity===='
for file in *.py
do
    if [[ ! "$file" =~ ^Test ]]   && [[ ! "$file" =~ ^Property_Test ]] && [[ ! "$file" =~ ^SupportTests ]]
    then
	radon cc $file -nb
    fi
done

echo ''
echo '====Maintainability Index===='
for file in *.py
do
    if [[ ! "$file" =~ ^Test ]]   && [[ ! "$file" =~ ^Property_Test ]] && [[ ! "$file" =~ ^SupportTests ]]
    then
	radon mi $file -nb
    fi
done



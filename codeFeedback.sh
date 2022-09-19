echo '====Complexity===='
radon cc *.py -nc
echo ''
echo '====Maintainability Index===='
radon mi ./ -nb

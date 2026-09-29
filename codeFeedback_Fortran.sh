lintAll_Fortran.sh
echo '====Complexity===='
lizard -C 7 -T parameter_count=5 -w  ./
echo ''
echo '====Duplicates===='
lizard -Eduplicate ./ | tail -n2

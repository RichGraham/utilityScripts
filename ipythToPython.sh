#!/bin/bash
#set -e
#Check correct number of command line arguments
if (( $# != 1 )); then
    echo "Converts iPython notebooks to python scripts" >&2
    echo " " >&2
    echo "Notes: The opening line determines where the script is copied to (#source_location source/CO2-2Ar/iPy/)"
    echo "       These lines are commented OUT 'testingname=dum_rInv-100.lhc #ipython_only'" >&2
    echo "       These lines are comment IN #Python_Only testingname= sys.argv[1]' ">&2
    echo " " >&2
   echo "Usage  : ipythToPython.sh [ipyth notebook]" >&2
   echo "Example: ipythToPython.sh SymmetricSqExp.ipynb" >&2
  exit 1
fi

#====Extract arguments====
pythName=$1


#====Main Script====
#Strip the ipynb extension
filename=$(basename "$pythName")
filename="${filename%.*}"

#ipython nbconvert --to=python $pythName
jupyter nbconvert --to python $pythName

#Add a header warning
currentDir=$(pwd)
echo '#*********WARNING:********* Do not edit this directly, instead copy the file elsewhere and edit or find and edit the ipython file'$currentDir'/ '$pythName | cat - $filename.py > temp && mv temp $filename.py

#Comment out the lines with the 'ipython_only' comment
sed -i '' /#ipython_only/s/^/#/ $filename.py

#Comment out the lines with the 'get_ipython' comment
sed -i '' /get_ipython/s/^/#/ $filename.py

#Remove comments from 'Python_only lines
sed -i '' 's/^#Python_Only //' $filename.py

#Remove comments from 'Python_only lines
cat $filename.py | grep '^#source_location' > dum
sed -i '' 's/^#source_location //' dum
location=$(cat dum)
#sed -i '' 's/^#Python_Only //' $filename.py
#rm dum

#Remove blank lines
sed  -i '' '/^$/d'  $filename.py

#Remove the 'In' lines from ipython
sed -i -e "s/.*#[[:space:]]In.*/ /" $filename.py

{ echo '#!/usr/bin/env python'; cat  $filename.py; } >  dum
mv dum  $filename.py
chmod +x $filename.py

if [ -z "$location" ]
then
      echo "Pyton file put here"
else
      echo "\$var is NOT empty"


      echo Copied source to $HOME/$location/$filename.py
      cp $filename.py $HOME/$location
fi
rm $filename.py-e

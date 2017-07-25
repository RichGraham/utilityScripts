#!/bin/bash
set -e
#Check correct number of command line arguments
if (( $# != 1 )); then
   echo "Converts iPython notebooks to python scripts" >&2
   echo "Usage  ipythToPython.sh [ipyth notebook]" >&2
   echo "Example:  ipythToPython.sh SymmetricSqExp.ipynb" >&2
  exit 1
fi

#====Extract arguments====
pythName=$1

#Strip the ipynb extension
filename=$(basename "$pythName")
filename="${filename%.*}"

ipython nbconvert --to=python $pythName

#Comment out the lines with the 'ipython_only' comment
sed -i '' /#ipython_only/s/^/#/ $filename.py

#Remove comments from 'Python_only lines
sed -i '' 's/^#Python_Only //' $filename.py

#Remove blank lines
sed  -i '' '/^$/d'  $filename.py

#Remove the 'In' lines from ipython
sed -i -e "s/.*#[[:space:]]In.*/ /" $filename.py

{ echo '#!/usr/bin/env python'; cat  $filename.py; } >  dum
mv dum  $filename.py
chmod +x $filename.py

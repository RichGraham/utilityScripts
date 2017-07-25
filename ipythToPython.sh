#!/bin/bash

#Arguments
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

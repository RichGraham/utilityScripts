#!/bin/bash                                                                                                                                                                                        
set -e #Quit if we get an error

for d in ~/source/*/ ; do
    cd $d
    out1=$(git ls-files --modified --deleted --exclude-standard)
    out2=$([ $(git rev-parse HEAD) = $(git ls-remote $(git rev-parse --abbrev-ref @{u} | \
sed 's/\// /g') | cut -f1) ] && echo "" || echo not up to date)
    if [ -n "$out1$out2" ]
    then
	echo ============ $d ============
	git status
	echo $out2
	echo ""
	echo ""
    fi
    
    #cd ..
done

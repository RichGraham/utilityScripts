#Make a grace templates folder (if it doesn't exist already)
mkdir -p  ~/.grace/templates/
ln -sf ~/source/utilityScripts/Default.agr ~/.grace/templates/

ln -sf ~/source/utilityScripts/search ~/bin/
ln -sf ~/source/utilityScripts/oldHistory ~/bin/
ln -sf ~/source/utilityScripts/diskUse ~/bin/
ln -sf ~/source/utilityScripts/.emacs ~/
ln -sf ~/source/utilityScripts/timeDiff.sh ~/bin
ln -sf ~/source/utilityScripts/ipythToPython.sh  ~/bin
ln -sf ~/source/utilityScripts/gitCheck.sh  ~/bin
ln -sf ~/source/utilityScripts/sendToDesktop.sh  ~/bin


git config --global core.excludesfile ~/source/utilityScripts/global_gitignore


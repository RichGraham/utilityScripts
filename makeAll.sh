#Make a grace templates folder (if it doesn't exist already)
mkdir -p  ~/.grace/templates/
ln -sf ~/source/utilityScripts/Default.agr ~/.grace/templates/

ln -sf ~/source/utilityScripts/search ~/bin/
ln -sf ~/source/utilityScripts/oldHistory ~/bin/
ln -sf ~/source/utilityScripts/diskUse ~/bin/
ln -sf ~/source/utilityScripts/.emacs ~/
ln -sf ~/source/utilityScripts/.pylintrc ~/
ln -sf ~/source/utilityScripts/timeDiff.sh ~/bin
ln -sf ~/source/utilityScripts/ipythToPython.sh  ~/bin
ln -sf ~/source/utilityScripts/gitCheck.sh  ~/bin
ln -sf ~/source/utilityScripts/sendToDesktop.sh  ~/bin
ln -sf ~/source/utilityScripts/amacs  ~/bin
ln -sf ~/source/utilityScripts/ipyth  ~/bin
ln -sf ~/source/utilityScripts/graceToPdf.sh  ~/bin
ln -sf ~/source/utilityScripts/codeFeedback.sh  ~/bin
ln -sf ~/source/utilityScripts/tidyLatexFiles.sh  ~/bin
ln -sf ~/source/utilityScripts/lintAll.sh  ~/bin
ln -sf ~/source/utilityScripts/cp_here.sh  ~/bin
ln -sf ~/source/utilityScripts/quick_plot.py  ~/bin
ln -sf ~/source/utilityScripts/get_file_path.sh ~/bin
ln -sf ~/source/utilityScripts/jupyter_notebook_config.py ~/.jupyter


git config --global core.excludesfile ~/source/utilityScripts/global_gitignore


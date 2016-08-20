. /sw/bin/init.sh 
export PATH=$PATH:~/bin:~/Dropbox/bin/:./:/usr/texbin/
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PS1='\[\e[0;32m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;0m\]'
#export PS1="\e[34;1m\h \e[0m\e[1m\w$ \e[0m"

export DISPLAY=:0.0

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

alias xmgrace='xmgrace -hdevice PDF -g 1200x900'
alias amacs='open -a /Applications/Aquamacs.app'
alias excel='open -a /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app/'
alias emacs='emacs -g 100x73'
#alias aspell='aspell --add-tex-command eqnref op --add-tex-command affil op   -c'
alias top='top -o cpu'
alias ipython='/Users/pmzrsg/anaconda/bin/ipython_mac.command'
cd Dropbox

# added by Anaconda 2.3.0 installer
export PATH="/Users/pmzrsg/anaconda/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:~/SheffieldML

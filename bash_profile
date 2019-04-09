#A general unix bash profile
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}: ${PWD/#$HOME/~}\007"'
export PS1='\[\e[0;32m\]\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;0m\]'
#export PS1="\e[34;1m\h \e[0m\e[1m\w$ \e[0m"

export PATH=$PATH:~/bin:./

#export DISPLAY=:0.0

export CLICOLOR=1


alias xmgrace='xmgrace -hdevice PDF -g 1150x900'
alias emacs='emacs -g 100x55'
#alias aspell='aspell --add-tex-command eqnref op --add-tex-command affil op   -c'
#alias ipyth='ipython notebook'
alias ls='ls --color=auto'
alias em='emacs -nw -q -l ~/source/utilityScripts/emacs-nw.el'
recent() { ls -htl "$@" | more; } #define the recent command


# added by Anaconda 2.3.0 installer
export PATH="/Users/pmzrsg/anaconda/bin:$PATH"
export PYTHONPATH=$PYTHONPATH:~/SheffieldML

## Mac
export PS1='\e[92m\u@devMac\e[00m:\e[1;38;5;117m\w\e[00m\$ '
export LSCOLORS='GxexFxfxcxDxdxCxChacad'

alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -AG'
alias DSdestory='function _delDS(){ find "./$1" -name ".DS_Store" -type f -print -delete; };_delDS'


### Common
if [ "$TERM" = xterm ]; then TERM=xterm-256color; fi
alias vi='vim'
alias rm='rm -r'
alias grep='grep --color=auto'
alias py='python3'
export CLICOLOR=1

alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -AG'
PS1='\[\033[1;92m\]\u@DevMac\[\033[00m\]:\[\033[1;38;5;117m\]\w\[\033[00m\]\$ '
export LSCOLORS='GxexFxfxcxDxdxCxChacad'

alias pyserver='python3 -m http.server 8080'
alias DSdestory='function _delDS(){ find "./$1" -name ".DS_Store" -type f -print -delete; };_delDS'


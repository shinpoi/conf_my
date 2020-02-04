## Common
if [ "$TERM" = xterm ]; then TERM=xterm-256color; fi
export CLICOLOR=1

alias vi='vim'
alias rm='rm -r'
alias grep='grep --color=auto'
alias py='python3'
alias pyserver='python3 -m http.server 8080'

## Mac
export PS1='\[\e[1;92m\]\u@DevMac\[\e[00m\]:\[\e[1;38;5;117m\]\w\[\e[00m\]\$ '
export LSCOLORS='GxexFxfxcxDxdxCxChacad'

alias ls='ls -G'
alias ll='ls -lhG'
alias la='ls -AG'

DSdestory() {
  find "./$1" -name ".DS_Store" -type f -print -delete;
}
export -f DSdestory


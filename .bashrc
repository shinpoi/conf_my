if [ "$TERM" = xterm ]; then TERM=xterm-256color; fi
PS1='\[\033[1;92m\]\u@\h\[\033[00m\]:\[\033[96m\]\w\[\033[00m\]\$ '

alias ls='ls -G'
alias grep='grep --color=auto'
alias rm='rm -r'
alias ll='ls -lh'
alias la='ls -A'


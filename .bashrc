### Common
if [ "$TERM" = xterm ]; then TERM=xterm-256color; fi
alias rm='rm -r'
alias grep='grep --color=auto'
export CLICOLOR=1

### MacOS
# export OS="mac" >> ~/.bahs_profile
if [ $OS == "mac" ]; then
	alias ls='ls -G'
	alias ll='ls -lhG'
	alias la='ls -AG'
	PS1='\[\033[1;92m\]\u@\h\[\033[00m\]:\[\033[1;38;5;117m\]\w\[\033[00m\]\$ '
	export LSCOLORS=GxexFxfxcxDxdxCxChacad
### Linux
else
	alias ls='ls --color'
	alias ll='ls -lh --color'
	alias la='ls -A --color'
	PS1='\[\033[1;92m\]\u@\h\[\033[00m\]:\[\033[1;38;5;12m\]\w\[\033[00m\]\$ '
	export LS_COLORS=$LS_COLORS:"fi=00:di=01;34:ln=01;36:pi=00;42:so=00;44:bd=01;93:cd=00;93:or=01;31:mi=01;90:ex=00;92:*.tar=00;90:*.gz=00;90:*.7z=00;90:*.zip=00;90:*.png=00;36:*.jpg=00;36:*.bmp=00;36:*.gif=00;36:"
fi

### vim plugin
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
	mkdir -p ~/.vim/bundle/Vundle.vim
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall
fi


SHELL := /bin/bash

export HERE=$(shell pwd)
export src=$(HERE)/src
export out=$(HERE)/out

mac:
	make bash_mac
	make vim
	make git

linux:
	make bash_liunx
	make vim
	make git

vim:
	./init_vim.sh

bash_mac:
	./init_bashrc.sh mac

bash_liunx:
	./init_bashrc.sh linux

git:
	./init_git.sh

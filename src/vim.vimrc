colorscheme lucario
syntax on
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set number
set autoindent
set expandtab
set hlsearch
set ignorecase

command Q q
command W w
command Wq wq
command WQ wq

cabbrev q1 q!
cabbrev Q1 q!
cabbrev Q! q!
cabbrev tb tabedit

noremap [ 0
noremap ] $

" Vundle Start
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" vim +PluginInstall +qall
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabCrMapping = 1

call vundle#end()
filetype plugin indent on
" Vundle End

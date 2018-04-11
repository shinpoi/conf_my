" Vim color file

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "lucario"

" Console
hi Normal     ctermfg=254	ctermbg=234
hi Search     ctermfg=Black	ctermbg=Yellow	cterm=NONE
hi Visual	  cterm=reverse
hi Function	  ctermfg=LightCyan
hi Cursor     ctermfg=Black	ctermbg=Green	cterm=bold
hi Special    ctermfg=LightRed
hi Comment    ctermfg=243
hi StatusLine ctermfg=blue	ctermbg=white
hi Statement  ctermfg=214	cterm=NONE
hi Type		  cterm=NONE


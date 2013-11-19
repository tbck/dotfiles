" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Last Change:	2013 Sep 30

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tbck-fall"

highlight VertSplit       ctermfg=8   ctermbg=none
highlight StatusLine      ctermfg=0   ctermbg=8
highlight StatusLineNC    ctermfg=8   ctermbg=none
highlight Directory       ctermfg=9   ctermbg=none

highlight Pmenu           ctermfg=0   ctermbg=none
highlight PmenuSel        ctermfg=1   ctermbg=0
highlight PmenuSbar       ctermfg=1   ctermbg=0
highlight PmenuThumb      ctermfg=8   ctermbg=8

highlight Comment	      ctermfg=0
highlight LineNr	      ctermfg=0
highlight NonText	      ctermfg=0

highlight Constant	      ctermfg=9
highlight String 	      ctermfg=2
highlight Character	      ctermfg=2
highlight Number 	      ctermfg=12
highlight Boolean	      ctermfg=9
highlight Float 	      ctermfg=12

highlight Identifier      ctermfg=6
highlight Function        ctermfg=6

highlight Statement       ctermfg=11
highlight Conditional     ctermfg=11
highlight Repeat          ctermfg=11
highlight Label           ctermfg=11
highlight Operator        ctermfg=3
highlight Keyword         ctermfg=11
highlight Exception       ctermfg=11

highlight PreProc	      ctermfg=10
highlight Include 	      ctermfg=12
highlight Define 	      ctermfg=12
highlight Macro 	      ctermfg=12
highlight PreCondit       ctermfg=10

highlight Type		      ctermfg=9
highlight StorageClass 	  ctermfg=9
highlight Structure 	  ctermfg=9
highlight Typedef         ctermfg=10

highlight Special	      ctermfg=2
highlight SpecialChar     ctermfg=2
highlight Tag             ctermfg=2
highlight Delimiter       ctermfg=2
highlight SpecialComment  ctermfg=2
highlight Debug           ctermfg=2

highlight Underlined      ctermfg=12
highlight Error			  ctermfg=0   ctermbg=9
highlight Todo		      ctermfg=4	  ctermbg=0

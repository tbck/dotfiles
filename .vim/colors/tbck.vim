" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tbck"

highlight Comment	      ctermfg=0
highlight LineNr	      ctermfg=0
highlight NonText	      ctermfg=0

highlight Constant	      ctermfg=14            "lightcyan
highlight String 	      ctermfg=2             "darkgreen
highlight Character	      ctermfg=2             "darkgreen
highlight Number 	      ctermfg=12            "lightblue
highlight Boolean	      ctermfg=14            "lightcyan
highlight Float 	      ctermfg=12            "lightblue

highlight Identifier      ctermfg=6             "darkcyan
highlight Function        ctermfg=6             "darkcyan

highlight Statement       ctermfg=11            "lightyellow
highlight Conditional     ctermfg=11            "lightyellow
highlight Repeat          ctermfg=11            "lightyellow
highlight Label           ctermfg=11            "lightyellow
highlight Operator        ctermfg=11            "lightyellow
highlight Keyword         ctermfg=11            "lightyellow
highlight Exception       ctermfg=11            "lightyellow

highlight PreProc	      ctermfg=10            "lightgreen
highlight Include 	      ctermfg=12            "lightblue
highlight Define 	      ctermfg=12            "lightblue
highlight Macro 	      ctermfg=12            "lightblue
highlight PreCondit       ctermfg=10            "lightgreen

highlight Type		      ctermfg=9             "lightred
highlight StorageClass 	  ctermfg=9             "lightred
highlight Structure 	  ctermfg=9             "lightred
highlight Typedef         ctermfg=10            "lightgreen

highlight Special	      ctermfg=2             "darkgreen
highlight SpecialChar     ctermfg=2             "darkgreen
highlight Tag             ctermfg=2             "darkgreen
highlight Delimiter       ctermfg=2             "darkgreen
highlight SpecialComment  ctermfg=2             "darkgreen
highlight Debug           ctermfg=2             "darkgreen

highlight Underlined      ctermfg=12            "lightblue
highlight Error			  ctermfg=0 ctermbg=9
highlight Todo		      ctermfg=4	ctermbg=3

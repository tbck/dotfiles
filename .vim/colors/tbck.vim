" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   Tyler Buck
" Last Change:	2014 Nov

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "tbck"

"highlight Normal            ctermfg=7
"highlight Cursor            ctermfg=8

highlight Comment           ctermfg=8 
highlight LineNr            ctermfg=8
highlight NonText           ctermfg=8

highlight Constant	        ctermfg=14
highlight String            ctermfg=2 
highlight Character         ctermfg=2 
highlight Number            ctermfg=12
highlight Boolean           ctermfg=14
highlight Float             ctermfg=12

highlight Identifier        ctermfg=6
highlight Function          ctermfg=6

highlight Statement         ctermfg=3			   cterm=bold
highlight Conditional       ctermfg=3
highlight Repeat            ctermfg=3
highlight Label             ctermfg=3
highlight Operator          ctermfg=3
highlight Keyword           ctermfg=3
highlight Exception         ctermfg=3

highlight PreProc	        ctermfg=10
highlight Include 	        ctermfg=12
highlight Define 	        ctermfg=12
highlight Macro 	        ctermfg=12
highlight PreCondit         ctermfg=10

highlight Type		        ctermfg=2
highlight StorageClass 	    ctermfg=2
highlight Structure         ctermfg=2
highlight Typedef           ctermfg=3

highlight Special	        ctermfg=12
highlight SpecialChar       ctermfg=2
highlight Tag               ctermfg=2
highlight Delimiter         ctermfg=2
highlight SpecialComment    ctermfg=2
highlight Debug             ctermfg=2

highlight Error			    ctermfg=0   ctermbg=9
highlight ErrorMsg		    ctermfg=0   ctermbg=9
highlight Todo		        ctermfg=4   ctermbg=3
highlight Directory         ctermfg=2
highlight StatusLine        ctermfg=11  ctermbg=12 cterm=none
highlight Underlined        ctermfg=12
highlight Search		    		    ctermbg=3

"highlight DiffAdd           ctermfg=0   ctermbg=0
"highlight DiffDelete        ctermfg=0   ctermbg=0
"highlight DiffChange        ctermfg=0   ctermbg=0
"highlight DiffText          ctermfg=0   ctermbg=0


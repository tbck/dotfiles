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
let g:colors_name = "julie"


" 0 - grey
" 8 - light grey
highlight Comment           ctermfg=8 
highlight LineNr            ctermfg=8
highlight NonText           ctermfg=8

" 1 - red
highlight Exception         ctermfg=1
" 9 - light red
highlight String            ctermfg=9 
highlight Character         ctermfg=9 

" 2 - green
highlight SpecialChar       ctermfg=2
highlight Tag               ctermfg=2
highlight Delimiter         ctermfg=2
highlight SpecialComment    ctermfg=2
highlight Debug             ctermfg=2
" 10 - light green
highlight Label             ctermfg=10
highlight PreProc	        ctermfg=10
highlight PreCondit         ctermfg=10

" 3 - yellow
highlight Statement         ctermfg=3 cterm=bold
highlight Conditional       ctermfg=3
highlight Repeat            ctermfg=3
" 11 - light yellow
highlight Type		        ctermfg=11
highlight Structure         ctermfg=11
highlight StorageClass 	    ctermfg=11
highlight Operator          ctermfg=11
highlight Keyword           ctermfg=11

" 4 - blue
highlight Macro 	        ctermfg=4
highlight Special	        ctermfg=4
" 12 - light blue
highlight Number            ctermfg=12
highlight Float             ctermfg=12

" 5 - magenta
highlight Boolean           ctermfg=5
highlight Typedef           ctermfg=5
" 13 - light magenta
highlight Include 	        ctermfg=13
highlight Define 	        ctermfg=13

" 6 - cyan
highlight Constant	        ctermfg=6
highlight Function          ctermfg=6
" 14 - light cyan
highlight Identifier        ctermfg=14 cterm=none

" 7 - off-white
" 15 - white


" others
highlight Error			    ctermfg=0   ctermbg=9
highlight ErrorMsg		    ctermfg=0   ctermbg=9
highlight Todo		        ctermfg=4   ctermbg=3
highlight Directory         ctermfg=2
highlight StatusLine        ctermfg=11  ctermbg=12 cterm=none
highlight Underlined        ctermfg=12
highlight Search		    		    ctermbg=3

"highlight Normal            ctermfg=7
"highlight Cursor            ctermfg=8

"highlight DiffAdd           ctermfg=0   ctermbg=0
"highlight DiffDelete        ctermfg=0   ctermbg=0
"highlight DiffChange        ctermfg=0   ctermbg=0
"highlight DiffText          ctermfg=0   ctermbg=0


""
" [ ~/.vimrc ]
" See the docs for details.
" http://vimdoc.sourceforge.net/htmldoc/options.html
""

"" Executes pathogen to infect runtime path duh.
execute pathogen#infect()

syntax on
colorscheme tbck
filetype plugin indent on

"" Number of spaces that a <Tab> in the file counts for.
set tabstop=4

"" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4
 
"" Use the appropriate number of spaces to insert a <Tab>.
"" Spaces are used in indents with the '>' and '<' commands
"" and when 'autoindent' is on. To insert a real tab when
"" 'expandtab' is on, use CTRL-V <Tab>.
set expandtab
 
"" When on, a <Tab> in front of a line inserts blanks
"" according to 'shiftwidth'. 'tabstop' is used in other
"" places. A <BS> will delete a 'shiftwidth' worth of space
"" at the start of the line.
set smarttab

"" Show (partial) command in status line.
set showcmd

"" Show current line number.
set number
"" Show relative line numbers.
set relativenumber

"" When a bracket is inserted, briefly jump to the
"" matching one. The jump is only done if the match can
"" be seen on the  screen. The time to show the match
"" can be set with 'matchtime'.
set showmatch       

"" When there is a previous search pattern, highlight all
"" its matches.
set hlsearch        

"" While typing a search command, show immediately where
"" the so far typed pattern matches.
set incsearch
 
"" Ignore case in search patterns.
set ignorecase      

"" Override the 'ignorecase' option if the search pattern
"" contains upper case characters.
set smartcase       

"" Influences the working of <BS>, <Del>, CTRL-W
"" and CTRL-U in Insert mode. This is a list of items,
"" separated by commas. Each item allows a way to
"" backspace over something.
set backspace=2     

"" Copy indent from current line when starting a new line.
set autoindent

"" Maximum width of text that is being inserted. 
set textwidth=79
 
"" This is a sequence of letters which describes how
"" automatic formatting is to be done.
""
"" letter    meaning when present in 'formatoptions'
"" ------    ---------------------------------------
"" c         Auto-wrap comments using textwidth, inserting
""           the current comment leader automatically.
"" q         Allow formatting of comments with 'gq'.
"" r         Automatically insert the current comment
""           leader after hitting <Enter> in Insert mode. 
"" t         Auto-wrap text using textwidth (does not apply
""           to comments)
set formatoptions=c,q,r 

"" Show the line and column number of the cursor position.
set ruler

"" Try to use light or dark background if possible.
set background=dark

"" Enable the use of the mouse
"" Hold shift to disable for copy/paste
set mouse=a

"" Enable backspace wrapping.
set whichwrap=b,s,<,>,[,]

"" Don't create backup files ending with '~'.
set nobackup

"" Don't write to the backup file on save.
set nowritebackup

"" Always show the statusbar.
"set laststatus=2

"" localleader
:let maplocalleader = "\\"

"" CTRL+X O omnicompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

let g:closetag_filenames = "*.html,*.hbs"
"autocmd BufNewFile,BufRead *.scss set ft=scss.css
"autocmd BufNewFile,BufRead *.less set ft=less.css

let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsListSnippets="<c-h>"

"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

"  \ 'file': '\v\.(exe|so|dll)$',
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|node_modules|tmp|bower_components|dist)$'
  \}

"" Remove vertical split characters
set fillchars=vert:\ 

"" Toggle automatic indenting during paste
set pastetoggle=<F2>

if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,latin1
endif

if has("autocmd")
    au BufReadPost *.rkt,*.rktl set filetype=scheme
    au BufReadPost *.ino set filetype=cpp
    au BufNewFile *.ino set filetype=cpp
    au BufRead *.php set ft=php.html
    au BufNewFile *.php set ft=php.html
endif

"" Run ftp in passive mode
let g:netrw_ftp_cmd = 'ftp -p'

"" local vimrc settings
let g:localvimrc_count = 1
let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0

"" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_less_options = '--include-path=src/styles/lib/:node_modules/'
"let g:syntastic_less_use_less_lint = 1

let g:syntastic_less_options = '--lint'
let g:syntastic_javscript_checkers = ['jshint']

let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['^\.git$', '^\.lvimrc$', '\.[A-Za-z0-9-_,.]*\.un\~$', '\.[A-Za-z0-9-_,.]*\.swp$']


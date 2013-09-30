""
" [ ~/.vimrc ]
" See the docs for details.
" http://vimdoc.sourceforge.net/htmldoc/options.html
""

"" Executes pathogen to infect runtime path duh.
execute pathogen#infect()

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

"" Show line numbers.
set number

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
set formatoptions=c,q,r,t 

"" Show the line and column number of the cursor position.
set ruler

"" Try to use light or dark background if possible.
set background=dark

"" Enable the use of middle click for pasting.
set mouse=v

"" Enable backspace wrapping.
set whichwrap=b,s,<,>,[,]

"" Don't create backup files ending with '~'.
set nobackup

"" Don't write to the backup file on save.
set nowritebackup

"" Always show the statusbar.
"set laststatus=2

if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,latin1
endif

syntax on
colorscheme tbck-fall

filetype plugin indent on

"" Hopefully sets .php files to be html also
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

"" Run ftp in passive mode
let g:netrw_ftp_cmd = 'ftp -p'
" vi text editor run command file for bruno azria on walter
" command or comment, no empty line, either vi command or comment (start line by ")
"                                                              
" python-specific options
"
" There are six options to control Python syntax highlighting.
" Note: only existence of these options matter, not their value. You can replace 1 above with anything.
" For highlighted numbers:
let python_no_number_highlight = 1
" For highlighted builtin functions:
let python_no_builtin_highlight = 1
" For highlighted standard exceptions:
let python_no_exception_highlight = 1
" For highlighted doctests and code inside:
let python_no_doctest_highlight = 1
" or
" let python_no_doctest_code_highlight = 1
" (first option implies second one).
" For highlighted trailing whitespace and mix of spaces and tabs:
let python_space_error_highlight = 1
" If you want all possible Python highlighting (the same as setting the preceding last option and unsetting all other ones):
" let python_highlight_all = 1
set background=dark
set backspace=indent,eol,start
set cinkeys=0{,0},0),:,!^F,o,O,e
set comments=b:#,fb:-
set commentstring=/*%s*/
set errorbells
" expand tabs into spaces
set expandtab
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,default,latin1
set filetype=python
set helplang=en
set hidden
set include=^\s*\(from\|import\)
set includeexpr=substitute(v:fname,'\.','/','g')
set incsearch
set indentexpr=GetPythonIndent(v:lnum)
set indentkeys=0{,0},:,!^F,o,O,e,<:>,=elif,=except
set keywordprg=pydoc
set laststatus=2
set modelines=1
set omnifunc=pythoncomplete#Complete
set scroll=15
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
set smartcase
set smartindent
set softtabstop=4
set suffixesadd=.py
set syntax=python
" enable syntax highlighting
syntax enable
set ttyfast
set ttymouse=xterm2
set wildignore=*.pyc
"
" non specific settings
"
" indent when moving to the next line while writing code
set autoindent
" show a visual line under the cursor's current line
set nocursorline
set ignorecase
set mesg
set nolisp
set nolist
" show line numbers
set number
" show the matching part of the pair for [] {} and ()
set showmatch
set showmode
" set tabs to have 4 spaces
set tabstop=4
set warn
"
"
"
" most available options
"
"set ai		noai		turn on auto indentation
"set all				print all options to the screen
"set ap		aw			print line after d c J m :s t u commands
"set aw		noaw		automatic write on :n ! e# ^^ :rew ^} :tag
"set bf		nobf		discard control characters from input
"set dir=tmp			dir=/tmp sets tmp to directory or buffer file
"set eb		noed		precede error messages with a bell
"set ed		noed		precede error messages with a bell
"set ht=	ht = 8		set terminal hardware tabs
"set ic		noic		ignore case when searching
"set lisp	nolisp		modify brackets for Lisp compatibility
"set list	nolist		show tabs (^l), end of line ($), whitespace
"set magic	nomagic		allows pattern matching with special characters
"set mesg	nomesg		allows others to send messages
"set nooption			turn off option
"set nu		nonu		show line numbers
"set opt	opt	Speeds output; eliminates automatic RETURN
"set para=	para = LIlPLPPPQPbpP	macro names that start paragraphs for { and } operators
"set prompt	prompt	Prompts for command input with :
"set re	nore	Simulates smart terminal on dumb terminal
"set remap	remap	Accept macros within macros
"set report	noreport	Indicates largest size of changes reported on status line
"set ro	noro	Changes file type to "read only"
"set scroll=n	scroll = 11	set n lines for CTRL-d and z
"set sh=shell_path	sh = /bin/sh	set shell escape (default is /bin/sh) to shell_path
"set showmode	nosm	show input or replace mode in status line 
"set slow	noslow		pospone display updates during inserts
"set sm		nosm		show matching brackets { or ( as ) or } is typed
"set sw=n	sw = 8	Sets shift width to n characters
"tab width
"set tags=x	tags = /usr/lib/tags	Path for files checked for tags (current directory included in default)
"set term	$TERM	Prints terminal type
"set terse	noterse	Shorten messages with terse
"set timeout		Eliminates one-second time limit for macros
"set tl=n	tl = 0	Sets significance of tags beyond n characters (0 means all)
"set ts=n	ts = 8	Sets tab stops to n for text input
"set wa		nowa		inhibits normal checks before write commands
"set warn	nowarn		warns "no write since last change"
"set window=n	window = n	Sets number of lines in a text window to n
"set wm=n	wm = 0	Sets automatic wraparound n spaces from right margin.
"set wrapmargin=10	define the point at which lines wrap in vanilla mode
"set ws	ws	Sets automatic wraparound n spaces from right margin.
"
"
"
" map keys: type "fn F1" for key "#1", control for ^
"
map #1 :!more ~/.vi_help
"
"
"
" color syntax tbd
"
"highlight Comment ctermbg=Red ctermfg=White
"syntax on
"
"
"
" manage mispelled words (abbreviations)
"
"ab het the
"ab teh the
"
"
"
" header file
"
" insert header file and automatically update fields using vi event-driven feature autocmd
" adapt header filename and strings accordingly
"		event				 pattern command 
" for each .c file, execute the header file
autocmd bufnewfile				 *.c source  $HOME/Google\ Drive/gdrive_bruno/unix/clang_header.txt
" for each .c file, add the filename to the field
autocmd bufnewfile				 *.c execute "1," . 9 . "g/filename :.*/s//filename : " .expand("%")
" for each .c file, add the author to the field
autocmd bufnewfile				 *.c execute "1," . 9 . "g/author   :.*/s//author   : " .$USER
" for each .c file, add the creation datetime to the field
autocmd bufnewfile				 *.c execute "1," . 9 . "g/created  :.*/s//created  : " .strftime("%Y.%m.%d   %H:%M:%S")
" mark the position of the cursor
autocmd bufwritepre,filewritepre *.c execute "normal ma"
autocmd bufwritepre,filewritepre *.c execute "1," . 9 . "g/updated  :.*/s//updated  : " .strftime("%Y.%m.%d   %H:%M:%S")
autocmd bufwritepost,filewritepost	*.c execute "normal `a"

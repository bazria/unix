" vi text editor run command file for bruno azria
" no empty lines
" all comments start by "
"
"     set ai	noai	Turns on auto indentation
"     set all	--	Prints all options to the screen
"     set ap	aw	Prints line after d c J m :s t u commands
"     set aw	noaw	Automatic write on :n ! e# ^^ :rew ^} :tag
"     set bf	nobf	Discards control characters from input
"     set dir=tmp	dir = /tmp	Sets tmp to directory or buffer file
"     set eb	noed	Precedes error messages with a bell
"     set ed	noed	Precedes error messages with a bell
set errorbells
"     set ht=	ht = 8	Sets terminal hardware tabs
"     set ic	noic	Ignores case when searching
"		set lisp	nolisp	Modifies brackets for Lisp compatibility.
set nolisp
"     set list	nolist	show tabs (^l), end of line ($), whitespace
set nolist
"     set magic	magic	Allows pattern matching with special characters
"     set mesg	mesg	Allows others to send messages
"     set nooption		Turns off option
"     set nu	nonu	show line numbers
set number
"     set opt	opt	Speeds output; eliminates automatic RETURN
"     set para=	para = LIlPLPPPQPbpP	macro names that start paragraphs for { and } operators
"     set prompt	prompt	Prompts for command input with :
"     set re	nore	Simulates smart terminal on dumb terminal
"     set remap	remap	Accept macros within macros
"     set report	noreport	Indicates largest size of changes reported on status line
"     set ro	noro	Changes file type to "read only"
"     set scroll=n	scroll = 11	set n lines for CTRL-d and z
"     set sh=shell_path	sh = /bin/sh	set shell escape (default is /bin/sh) to shell_path
" show matching brackets, braces, parentheses
set showmatch
" set showmode	nosm	show input or replace mode in status line 
set showmode
"     set slow	slow	Pospone display updates during inserts
"     set sm	nosm	Show matching { or ( as ) or } is typed
"     set sw=n	sw = 8	Sets shift width to n characters
"		set tab width
set tabstop=4
"     set tags=x	tags = /usr/lib/tags	Path for files checked for tags (current directory included in default)
"     set term	$TERM	Prints terminal type
"     set terse	noterse	Shorten messages with terse
"     set timeout		Eliminates one-second time limit for macros
"     set tl=n	tl = 0	Sets significance of tags beyond n characters (0 means all)
"     set ts=n	ts = 8	Sets tab stops to n for text input
set tabstop=4
"     set wa	nowa	Inhibits normal checks before write commands
"     set warn	warn		Warns "no write since last change"
"     set window=n	window = n	Sets number of lines in a text window to n
"     set wm=n	wm = 0	Sets automatic wraparound n spaces from right margin.
"     set ws	ws	Sets automatic wraparound n spaces from right margin.
"
"
"
"		map keys
"
map #2 :!more ~/.vi_help
"
"
"
"	test
"
syntax on
"
"
"
" Define the point at which lines wrap in vanilla mode
"set wrapmargin=10
"
" --------------------------
"
" control-b - backward character ala emacs
"map  h
" control-f - forward character ala emacs
"map  l
"" control-t - twiddle chars ala emacs
"map  hxpl
"" F2 - invoke ispell
"map #2 :w:!ispell -x %:e!
"" F5 - invoke fmt
"map #5 !}fmt
""
"" Classic vi user community macros for completion 
"" based on previous or next instances of a word
"" in the current buffer that matches the current 
"" substring
""
"map!  a. hbmmi?\<2h"zdt.@zywmx`mP xi
"map!  a. hbmmi/\<2h"zdt.@zywmx`mP xi
""
"" --------------------------
""
"" Abbreviations
""
"ab het the
"ab teh the
""
"" --------------------------
""

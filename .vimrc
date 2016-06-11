set nocompatible

"turns on syntax highlighting
syntax on

"Attempt to determine the type of a file. Use to allow intelligent auto-indenting for each filetype, and plugins that are filetype specific
filetype indent plugin on

"Allows reuse of same window for different files without having to save what
"is in current buffer
set hidden

"Better command line completion
set wildmenu

"Show partial commands in last line of screen
set showcmd

"Highlight Searches
set hlsearch

"Set visual bell instead of beeping when doing something wrong
set visualbell

"Display Line numbers
set number

"Allow backspaces over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"Where there is no file specific indentation, keep the indent of the line
"you're currently on
set autoindent

"Display Cursor position on last line of the screen or in status line of
"window
set ruler

"Always display the Status Line
set laststatus=2

"Set indendation to 4 spaces with hard tab
set shiftwidth=4
set tabstop=4

"Set current directory as working directory
set autochdir

"Set vim file to autoupdate when changed (hopefully)
set autoread

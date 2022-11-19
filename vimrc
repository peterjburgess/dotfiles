"vimrc for Peter Burgess. Contact @ petebur@gmail.com 

"Global settings-------------------------------------------{{{1

"Basic settings ---------------------------------{{{2
"Use vim specific features. Ignore Vi compatibility
set nocompatible

"Set leader and local leader
let mapleader=" "
let maplocalleader=","

"Allows reuse of same window for different files without having to save what is in current buffer
set hidden

"Better command line completion
set wildmenu

"Show partial commands in last line of screen
set showcmd

"Attempt to determine the type of a file. Use to allow intelligent auto-indenting for each filetype, and plugins that are filetype specific
filetype indent plugin on

"Set visual bell instead of beeping when doing something wrong
set visualbell

"Set current directory as working directory
set autochdir

"Set vim file to autoupdate when changed (hopefully)
set autoread

"End basic settings}}}2

"Display settings -------------------------------{{{2
"Turn on syntax highlighting
syntax on
 
"Set the default colorscheme (works best in dark terminals for me)
colorscheme ron

"Highlight Searches
set hlsearch

"Display Line numbers
set number

"Display Cursor position on last line of the screen or in status line of window
set ruler

"Always display the Status Line
set laststatus=2
"End display settings}}}2

"Indentation Settings ---------------------------{{{2
"Allow backspaces over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

"Where there is no file specific indentation, keep the indent of the line you're currently on
set autoindent

"Set default indendation to 2 spaces
set expandtab
set shiftwidth=2
set tabstop=2

"Round shifts to nearest shiftwidth
set shiftround
"End indentation settings}}}2

"Remappings -------------------------------------{{{2
"Navigation mappings ------------------{{{3
"Remap jk to esc
inoremap jk <esc>
vnoremap <leader>jk <esc>

"More easily go to start and end of lines
nnoremap H ^
nnoremap L $

"More easily go left or right in insert mode
inoremap <c-l> <right>
inoremap <c-h> <left>

"Allow for easier navigation around splits
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l

"Easily move lines up and down in the file
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP
"End navigation mappings }}}3

"Text mappings ------------------------{{{3
"Put quotes around current word in normal mode
nnoremap <leader>" lbi"<esc>ea"<esc>
nnoremap <leader>' lbi'<esc>ea'<esc>

"Allow uppercasing word in insert and normal modes
inoremap <c-u> <esc>viwU<esc>i
nnoremap <leader><c-u> viwU<<esc>

"Create a new empty line then immediately return to normal mode
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

"Put quotes around selection in visual mode
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>vf"

"Easily enter my email address when in normal mode
nnoremap <leader>@ ipetebur@gmail.com<esc>
"End text mappings }}}3

"Movement mappings --------------------{{{
"Allow movements to apply inside and around parentheses, curly braces and square brackets on the current line
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap an( :<c-u>normal! f(va(<cr>
onoremap al( :<c-u>normal! F)va(<cr>

onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap an{ :<c-u>normal! f{va{<cr>
onoremap al{ :<c-u>normal! F}va{<cr>

onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap il[ :<c-u>normal! F]vi[<cr>
onoremap an[ :<c-u>normal! f[va[<cr>
onoremap al[ :<c-u>normal! F]va[<cr>

"Change inside next email address. Match in pattern ###@###.### where ### means at least 1 none-whitespace character. These could be @, which I might want to figure out how to fix.
onoremap in@ :execute "normal! /\\S\\+@\\S\\+\\.\\S\\+\r:nohlsearch\rvE"<cr>
"End movement mappings }}}3

"Misc mappings ------------------------{{{3
"Allow easily opening .vimrc file from any vim session and reset the source
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>hev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
"End misc mappings }}}3
"End remappings }}}2

"Common abbreviations ---------------------------{{{2
"Add abbreviations for common spelling mistakes and useful shortcuts
:iabbrev adn and
:iabbrev waht what
:iabbrev tehn then
:iabbrev @@1 petebur@gmail.com
:iabbrev ipd import pandas as pd
:iabbrev inp import numpy as np
"End common abbreviations }}}2

"End global settings}}}1

"Filetype autocommands ------------------------------------{{{1
"Vim --------------------------------------------{{{2
augroup filetype_vim
  autocmd!
  "Set fold style for vim files to be marker
  set foldmethod=marker
augroup END
"End Vim}}}2

"Python -----------------------------------------{{{2
augroup filetype_py
  autocmd!
  "Comment out the current line
  autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>

  "Create shortcuts for if, elif, def, for and while
  autocmd FileType python iabbrev <buffer> iff if:<left>
  autocmd FileType python iabbrev <buffer> ife if:<cr>pass<cr>else:<up><up><left>
  autocmd FileType python iabbrev <buffer> eliff elif:<left>
  autocmd FileType python iabbrev <buffer> deff def():<left><left><left>
augroup END
"End Python }}}2

"HTML -------------------------------------------{{{2 
augroup filetype_html
  autocmd!
  "Fold tags
  autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END
"End HTML }}}2

"Markdown ---------------------------------------{{{2
augroup filetype_md
  autocmd!
  "Inside and around headers. Extra slash needed before | because it needs to
  "be escaped from the map as well as in the search
  autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal! ?\\(^==\\+$\\)\\\|\\(^--\\+$\\)\r:nohlsearch\rkvg_"<cr>
  autocmd FileType markdown onoremap <buffer> ah :<c-u>execute "normal! ?\\(^==\\+$\\)\\\|\\(^--\\+$\\)\r:nohlsearch\rg_vk0"<cr>
augroup END
"End Markdown }}}2

"End filetype autocommands}}}1

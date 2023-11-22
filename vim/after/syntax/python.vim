" Tweaks to the existing Python syntax file
" Language:     Python
" Maintainer:   Peter Burgess <petebur@gmail.com>
" Last Change:  2023 Nov 21
" Credits:      Zvezdvan Petkovic <zpetkovic@acm.org>
"               
"               This version is an addition to the included Python syntax
"               file.
"
"               - introduced support for fstrings
"               - introduced support for typehints
"
" define fstring syntax
syntax region pythonFString matchgroup=pythonQuotes 
      \  start=+[fF]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
      \ contains=pythonEscape,@Spell,pythonFStringVariable

" TODO define syntax for type hints

syntax match pythonFStringVariable "{.*}" contained

highlight link pythonFString          String
highlight link pythonFStringVariable  Normal


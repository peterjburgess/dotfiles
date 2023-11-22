set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="pblight"

"For now, I mostly like the defaults. I just want to distinguish markdown code
"in documents

hi Visual ctermbg=grey
hi markdownCode ctermfg=DarkYellow ctermbg=NONE
hi markdownCodeBlock ctermfg=DarkYellow

"Defaults
hi Comment term=bold cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=Blue guibg=NONE
hi Comment	term=bold cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=Blue guibg=NONE
hi Constant	term=underline cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
" #6a5acd is SlateBlue
hi Special	term=bold cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#6a5acd guibg=NONE
hi Identifier	term=underline cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE
hi Statement	term=bold cterm=NONE ctermfg=Brown ctermbg=NONE gui=bold guifg=Brown guibg=NONE
" #6a0dad is Purple
hi PreProc	term=underline cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=#6a0dad guibg=NONE
hi Type		term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE
hi Underlined	term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=SlateBlue
hi Ignore	term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=bg guibg=NONE

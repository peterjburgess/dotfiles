" dplus.vim - for an approximation of VSCode's Dark+ colorscheme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "dark+"
hi Normal		guifg=#DDDDDD guibg=#1E1E1E
hi NonText		guifg=darkgray guibg=#1E1E1E
hi Include  guifg=#C586C0
hi Function guifg=#DCDCAA
hi Comment		guifg=#6A9955
hi Number   guifg=#B5CEA8
hi StatusLine	gui=bold	guifg=#2F2F2F guibg=#DDDDDD	
hi StatusLineNC	gui=NONE guifg=#2F2F2F guibg=#DDDDDD
hi Statement	guifg=#569CD6	gui=NONE
hi Constant	 guifg=#9CDCFE
hi Identifier	guifg=#9CDCFE	gui=NONE
hi String guifg=#CE9178
hi Type			guifg=#4EC9B0	gui=bold

"TODO create markdown syntax file
"TODO look up syn-conceal for hiding characters
"TODO look up block highlighting
hi markdownCode guibg=#444444
hi markdownCodeBlock    guifg=#9CDCFE
hi link markdownCodeDelimiter Ignore

hi preproc		guifg=#C586C0
hi special		guifg=yellow
hi ErrorMsg		guifg=Black	guibg=Red
hi WarningMsg	guifg=Black	guibg=Green
hi Error		guibg=Red
hi Todo			guifg=Black	guibg=orange
hi Cursor		guibg=#60a060 guifg=#00ff00
hi Search		guibg=darkgray guifg=black gui=bold 
hi IncSearch	gui=NONE guibg=steelblue
hi LineNr		guifg=darkgrey
hi title		guifg=darkgrey
hi ShowMarksHL ctermfg=cyan ctermbg=lightblue cterm=bold guifg=yellow guibg=black  gui=bold
hi label		guifg=gold2
hi operator		guifg=orange
hi clear Visual
hi Visual		term=reverse cterm=reverse gui=reverse
hi DiffChange   guibg=darkgreen
hi DiffText		guibg=olivedrab
hi DiffAdd		guibg=slateblue
hi DiffDelete   guibg=coral
hi Folded		guibg=gray30
hi FoldColumn	guibg=gray30 guifg=white
hi cIf0			guifg=gray
hi diffOnly	guifg=red gui=bold

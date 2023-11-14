" halfdark.vim - matches my preferred terminal colorscheme

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "halfdark"

hi Normal   guifg=#DCDFE4 guibg=#282C34
hi NonText  guifg=#5A6374 guibg=#282C34
hi Comment  guifg=#C678DD
hi Constant guifg=#61AFEF
hi Identifier guifg=#61AFEF
hi String   guifg=#E06C75
hi Statement  guifg=#56B6C2
hi Function   guifg=#DCDCAA
hi Number     guifg=#DCDFE4
hi Include    guifg=#C586C0
hi Type       guifg=#98C379
hi LineNr     guifg=#E5C07B
hi Todo       guifg=#E5C07B guibg=#282C34

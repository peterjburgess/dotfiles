-- Name:          halfdark.lua 
-- Description:   Approximates my preferred dark mode terminal colorscheme
-- Author:        Peter Burgess <petebur@gmail.com>

vim.g.colors_name = 'halfdark'

local hi = function(group, val)
  -- Changes the highlighting for 'group'
  -- args:
  --    name: The name of the highlight group
  --    val:  A lua table of options defining the highlight group
  -- See :h nvim_set_hl for details

  -- This updates the link if it already exists
  val.force = true

  -- This is in the default vim.lua file. I'm not sure the consequences of leaving it out
  -- Make sure that `cterm` attribute is not populated from `gui`
  val.cterm = val.cterm or {}

  -- Define highlight
  vim.api.nvim_set_hl(0, group, val)
end

hi('Normal',      {fg = '#DCDFE4'})
hi('NonText',     {fg = '#5A6374'})
hi('Comment',     {fg = '#C678DD'})
hi('Constant',    {fg = '#61AFEF'})
hi('Identifier',  {fg = '#61AFEF'})
hi('String',      {fg = '#E06C75'})
hi('Statement',   {fg = '#56B6C2'})
hi('Function',    {fg = '#DCDCAA'})
hi('Number',      {fg = '#DCDFE4'})
hi('Include',     {fg = '#C586C0'})
hi('Type',        {fg = '#98C379'})
hi('LineNr',      {fg = '#E5C07B'})
hi('Todo',        {fg = '#E5C07B', bg='#282C34'})

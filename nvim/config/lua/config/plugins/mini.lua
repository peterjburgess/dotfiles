return {
    { 
	'echasnovski/mini.nvim',
	version = false,
	config = function()
	    local statusline = require 'mini.statusline'
	    statusline.setup { use_icons = true }
	    local icons = require 'mini.icons'
	    icons.setup {}
	end
    }
}

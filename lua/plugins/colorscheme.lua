-- local theme_url = "catppuccin/nvim"
-- local theme_name = "catppuccin"
-- local theme_style = "catppuccin"

local theme_url = "wuelnerdotexe/vim-enfocado"
local theme_name = "enfocado"
local theme_style = "enfocado"

-- local theme_url = "rose-pine/neovim"
-- local theme_name = "rose-pine"
-- local theme_style = "rose-pine"

-- local theme_url = "olimorris/onedarkpro.nvim"
-- local theme_name = "onedark"
-- local theme_style = "onedark"

return {
	theme_url,
	name = theme_name,
	lazy = false,
	priority = 1000,
	init = function()
		vim.g.enfocado_style = "neon"
	end,
	config = function()
		vim.cmd.colorscheme(theme_style)
	end,
}

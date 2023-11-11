return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"jose-elias-alvarez/null-ls.nvim",
		"nvim-lua/plenary.nvim",
		{
			"williamboman/mason.nvim",
			opts = {
				ui = {
					border = "rounded",
				},
			},
		},
		"folke/neodev.nvim",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	event = "VeryLazy",
	main = "custom.lsp",
	opts = {
		mason = {
			enable = true,
			auto_install = true,
		},
		servers = {},
	},
}

return {
	{
		"neovim/nvim-lspconfig",
		opts = {},
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			lspconfig.rust_analyzer.setup({})
			lspconfig.basedpyright.setup({})
			lspconfig.ruff.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gdd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, {})
			vim.diagnostic.config({ virtual_text = true, virtual_lines = false })
		end,
	},
}

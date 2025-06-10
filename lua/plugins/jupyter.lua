return {
	"benlubas/molten-nvim",
	lazy = false,
	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	dependencies = { "3rd/image.nvim" },
	build = ":UpdateRemotePlugins",
	config = function()
		-- these are examples, not defaults. Please see the readme
		vim.g.molten_image_location = "virt"
		vim.g.molten_image_provider = "image.nvim"
		vim.g.molten_output_virt_lines = true
		vim.g.molten_auto_open_output = false
		vim.g.molten_virt_text_output = true
		vim.g.molten_virt_lines_off_by_1 = true
		vim.g.molten_virt_text_max_lines = 40
		vim.g.molten_wrap_output = true
		vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
		vim.keymap.set(
			"n",
			"<leader>e",
			":MoltenEvaluateOperator<CR>",
			{ silent = true, desc = "run operator selection" }
		)
		vim.keymap.set("n", "<leader>jnl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
		vim.keymap.set("n", "<leader>jnc", ":MoltenReevaluateCell<CR>", { silent = true, desc = "re-evaluate cell" })
		vim.keymap.set(
			"v",
			"<leader>jnv",
			":<C-u>MoltenEvaluateVisual<CR>gv",
			{ silent = true, desc = "evaluate visual selection" }
		)
	end,
}

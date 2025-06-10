return { -- directly open ipynb files as quarto docuements
	-- and convert back behind the scenes
	"GCBallesteros/jupytext.nvim",
	lazy = false,
	opts = {
		custom_language_formatting = {
			python = {
				extension = "markdown",
				style = "markdown",
				force_ft = "markdown",
			},
		},
	},
}

return {
	"epwalsh/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Svalbard",
				path = "/home/db/Obsidian/Svalbard/",
			},
			-- {
			--   name = "All",
			--   path = "/home/db/",
			-- },
		},
		templates = {
			folder = "/home/db/Obsidian/Svalbard/Meta/Templates/",
		},
		daily_notes = {
		  folder = "Personal/Daily/",
		},
		-- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
		completion = {
			-- Set to false to disable completion.
			nvim_cmp = true,
			-- Trigger completion at 2 chars.
			min_chars = 2,
		},
		open_app_foreground = false,
	},
}

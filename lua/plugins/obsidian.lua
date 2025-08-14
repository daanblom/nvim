return {
	-- "epwalsh/obsidian.nvim",
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Obsidian",
				path = "/home/db/Obsidian/",
			},
			-- {
			--   name = "All",
			--   path = "/home/db/",
			-- },
		},
		templates = {
			folder = "TEMPLATES/",
		},
		daily_notes = {
			template = "TEMPLATES/Daily.md",
			workdays_only = false,
			folder = "PERSONAL/Notes/Daily/",
		},
		-- Optional, completion of wiki links, local markdown links, and tags using nvim-cmp.
		completion = {
			-- Set to false to disable completion.
			nvim_cmp = true,
			-- Trigger completion at 2 chars.
			min_chars = 2,
		},
		-- open_app_foreground = false,
		legacy_commands = false,
	},
}

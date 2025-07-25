return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		-- Snacks Modules
		input = {
			enabled = true,
		},
		quickfile = {
			enabled = true,
			exclude = { "latex" },
		},
		-- HACK: read picker docs @ https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
		picker = {
			enabled = true,
			matchers = {
				frecency = true,
				cwd_bonus = false,
			},
			formatters = {
				file = {
					filename_first = false,
					filename_only = false,
					icon_width = 2,
				},
			},
			layout = {
				-- presets options : "default" , "ivy" , "ivy-split" , "telescope" , "vscode", "select" , "sidebar"
				-- override picker layout in keymaps function as a param below
				preset = "telescope", -- defaults to this layout unless overidden
				cycle = false,
			},
			layouts = {
				select = {
					preview = false,
					layout = {
						backdrop = true,
						width = 0.6,
						min_width = 80,
						height = 0.4,
						min_height = 10,
						box = "vertical",
						border = "rounded",
						title = "{title}",
						title_pos = "center",
						{ win = "input", height = 1, border = "bottom" },
						{ win = "list", border = "none" },
						{ win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top" },
					},
				},
			},
		},
	},

	keys = {
		{
			"<leader>lg",
			function()
				require("snacks").lazygit()
			end,
		},
		{
			"<leader>gl",
			function()
				require("snacks").lazygit.log()
			end,
		},
		-- { "e", function()require("snacks").explorer() end, },

		-- Snacks Picker
		{
			"<leader>pf",
			function()
				require("snacks").picker.files()
			end,
		},
		{
			"<leader>ps",
			function()
				require("snacks").picker.grep()
			end,
		},
		{
			"<leader>pws",
			function()
				require("snacks").picker.grep_word()
			end,
		},
		{
			"<leader>pwk",
			function()
				require("snacks").picker.keymaps()
			end,
		},
	},
}

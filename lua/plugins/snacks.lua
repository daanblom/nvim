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
			hidden = true,
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
					show_hidden = true,
				},
			},
			layout = {
				-- presets options : "default" , "ivy" , "ivy-split" , "telescope" , "vscode", "select" , "sidebar"
				-- override picker layout in keymaps function as a param below
				preset = "default", -- defaults to this layout unless overidden
				cycle = false,
			},
			layouts = {
				select = {
					preview = true,
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
			win = {
				list = {
					keys = {
						["<BS>"] = "explorer_up",
						["l"] = "confirm",
						["h"] = "explorer_close", -- close directory
						["a"] = "explorer_add",
						["d"] = "explorer_del",
						["r"] = "explorer_rename",
						["c"] = "explorer_copy",
						["m"] = "explorer_move",
						["o"] = "explorer_open", -- open with system application
						["P"] = "toggle_preview",
						["y"] = { "explorer_yank", mode = { "n", "x" } },
						["p"] = "explorer_paste",
						["u"] = "explorer_update",
						["<c-c>"] = "tcd",
						["<leader>/"] = "picker_grep",
						["<c-t>"] = "terminal",
						["."] = "explorer_focus",
						["I"] = "toggle_ignored",
						["H"] = "toggle_hidden",
						["Z"] = "explorer_close_all",
						["]g"] = "explorer_git_next",
						["[g"] = "explorer_git_prev",
						["]d"] = "explorer_diagnostic_next",
						["[d"] = "explorer_diagnostic_prev",
						["]w"] = "explorer_warn_next",
						["[w"] = "explorer_warn_prev",
						["]e"] = "explorer_error_next",
						["[e"] = "explorer_error_prev",
					},
				},
			},
		},
		image = {
			enabled = true, -- turn the whole thing on/off
			preview = true, -- show previews in picker/hover
			integrations = { -- where images should appear
				markdown = true, -- render images in markdown buffers
				neorg = true, -- render images in Neorg
				help = false, -- show images in help docs
				lsp = false, -- inline previews from LSP
			},
			max_width = 20, -- max image width in cells
			max_height = 20, -- max image height in cells
			background_color = "#1e1e1e", -- fill color behind transparent images
			kitty_method = "normal", -- "normal" or "overlay" (Kitty-specific tweak)
			fade = true, -- fade images when not focused
			lazy_load = true, -- load images only when visible
			stretch = false, -- stretch small images to fill bounds
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
		{
			"e",
			function()
				require("snacks").explorer({
					-- cwd = vim.fn.expand("%:p:h"), -- set the current working directory to the file's directory
				})
			end,
		},

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

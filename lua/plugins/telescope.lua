return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons"
	},

	config = function()
		local telescope = require("telescope")

		telescope.setup({
			defaults = {
				path_display = { "truncate " },
			},
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown{
					}
				}
			}
		})

		telescope.load_extension("fzf")

		local builtin = require("telescope.builtin")
		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Fird string in cwd" })
		keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader>gc", builtin.git_commits, {})
		keymap.set("n", "<leader>gh", builtin.git_bcommits, {})
		keymap.set("n", "<leader>gb", builtin.git_branches, {})
		keymap.set("n", "<leader>gs", builtin.git_status, {})
	end,
}

return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function ()

		require("gitsigns").setup({
			on_attach = function (bufnr)
				vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", {})
			end
		})

	end
}

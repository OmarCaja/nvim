return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recommended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

	local api = require("nvim-tree.api")
    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", api.tree.toggle, { desc = "Toggle file explorer" })
    keymap.set("n", "<leader>ef", api.tree.find_file, { desc = "Toggle file explorer on current file" })
    keymap.set("n", "<leader>er", api.tree.reload, { desc = "Refresh file explorer" })
  end
}

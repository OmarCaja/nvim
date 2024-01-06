return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "shellcheck",
        "shfmt",
        "lua-language-server",
        "luacheck",
        "stylua",
        "html-lsp",
        "css-lsp",
        "astro-language-server",
      },
    },
  },
}

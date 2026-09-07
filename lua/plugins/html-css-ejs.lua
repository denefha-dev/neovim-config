return {
  -- LSP untuk HTML, CSS, dan EJS
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "ejs" }, -- biar LSP aktif untuk EJS juga
        },
        cssls = {},
        emmet_language_server = {
          filetypes = { "html", "css", "javascriptreact", "typescriptreact", "ejs" },
        },
      },
    },
  },

  -- Treesitter highlight HTML, CSS, JS (dipakai EJS juga)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css", "javascript" },
    },
  },
}

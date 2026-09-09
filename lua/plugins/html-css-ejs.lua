return {
  -- LSP untuk HTML, CSS, dan EJS
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {
          filetypes = { "html", "ejs" },
        },
        cssls = {},
        emmet_language_server = {
          filetypes = {
            "html",
            "css",
            "javascriptreact",
            "typescriptreact",
            "ejs",
          },
        },
      },
    },
  },
}

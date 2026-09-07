return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      ensure_installed = {
        "html",
        "javascript",
        "css",
        "lua",
      },
      highlight = {
        enable = true,
      },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
  },
}

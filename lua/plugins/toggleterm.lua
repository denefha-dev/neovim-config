return {
  "akinsho/toggleterm.nvim",
  opts = {
    open_mapping = [[<c-\>]], -- Ctrl + \
    direction = "float",
    float_opts = {
      border = "rounded",
      width = function()
        return math.floor(vim.o.columns * 0.8)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.8)
      end,
      winblend = 0,
    },
    shade_terminals = true,
    start_in_insert = true,
    persist_size = true,
  },
}

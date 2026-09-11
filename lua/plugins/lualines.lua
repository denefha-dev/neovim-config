-- ────────── Lines Syntax ──────────
return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 1, {
        function()
          return vim.api.nvim_buf_line_count(0) .. " lines"
        end,
      })
    end,
  },
}

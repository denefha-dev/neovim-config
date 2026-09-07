return {
  {
    "nikvdp/ejs-syntax",
    ft = { "ejs" }, -- lazy-load hanya untuk file .ejs
    config = function()
      -- optional: kalau mau treat .ejs juga sebagai html untuk beberapa plugin lain
      vim.filetype.add({ extension = { ejs = "ejs" } })
    end,
  },
}

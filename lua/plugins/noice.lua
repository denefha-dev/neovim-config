-- notifikasi Neovim
return {
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "fade_in_slide_out",
    },
  },

  {
    "folke/noice.nvim",
    opts = {
      views = {
        notify = {
          backend = "notify",
        },
      },
    },
  },
}

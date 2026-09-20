-- memunculkan file hidden (.gitignore)
-- ubah nama dashboard menjadi (denefha)
-- tampilkan preview file dan gambar di Snacks Picker

return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        layout = {
          preset = "default",
          preview = true,
        },

        sources = {
          explorer = {
            hidden = true,
            ignored = true,
          },
        },
      },

      dashboard = {
        preset = {
          header = [[
██████╗ ███████╗███╗   ██╗███████╗███████╗██╗  ██╗ █████╗ 
██╔══██╗██╔════╝████╗  ██║██╔════╝██╔════╝██║  ██║██╔══██╗
██║  ██║█████╗  ██╔██╗ ██║█████╗  █████╗  ███████║███████║
██║  ██║██╔══╝  ██║╚██╗██║██╔══╝  ██╔══╝  ██╔══██║██╔══██║
██████╔╝███████╗██║ ╚████║███████╗██║     ██║  ██║██║  ██║
╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝
]],
        },
      },
    },
  },
}

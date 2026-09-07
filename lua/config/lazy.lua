-- ============================================================
-- Bootstrap lazy.nvim
-- ============================================================

-- Lokasi instalasi lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Jika lazy.nvim belum terinstall, clone dari GitHub
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"

  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })

  -- Jika proses clone gagal
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})

    vim.fn.getchar()
    os.exit(1)
  end
end

-- Masukkan lazy.nvim ke runtime path Neovim
vim.opt.rtp:prepend(lazypath)


-- ============================================================
-- Setup lazy.nvim
-- ============================================================

require("lazy").setup({

  -- ----------------------------------------------------------
  -- Plugin specification
  -- ----------------------------------------------------------

  spec = {

    -- Load LazyVim beserta plugin bawaannya
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
    },

    -- Load plugin custom dari:
    -- ~/.config/nvim/lua/plugins/
    {
      import = "plugins",
    },
  },


  -- ----------------------------------------------------------
  -- Default plugin settings
  -- ----------------------------------------------------------

  defaults = {

    -- Plugin custom tidak lazy-load secara default
    lazy = false,

    -- Gunakan versi/commit terbaru
    version = false,
  },


  -- ----------------------------------------------------------
  -- Colorscheme
  -- ----------------------------------------------------------

  install = {
    colorscheme = {
      "tokyonight",
      "habamax",
    },
  },


  -- ----------------------------------------------------------
  -- Plugin update checker
  -- ----------------------------------------------------------

  checker = {

    -- Cek update plugin secara berkala
    enabled = true,

    -- Jangan tampilkan notifikasi update
    notify = false,
  },


  -- ----------------------------------------------------------
  -- Performance
  -- ----------------------------------------------------------

  performance = {

    rtp = {

      -- Plugin bawaan Neovim yang dinonaktifkan
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})


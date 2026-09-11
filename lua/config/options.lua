-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Absolute + relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.statuscolumn = "%C%s%=%{printf('%4d %3d  ', v:lnum, v:relnum)}"

-- clipboard active
vim.opt.clipboard = "unnamedplus"

-- Display invisible characters
vim.opt.list = true
vim.opt.listchars = { tab = "→ ", trail = "·", nbsp = "␣" }

-- Indentation
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

-- Smart indentation
vim.opt.smartindent = true

-- Search --> use /ur_search
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ruler = true

-- Incremental command preview --
-- vim.opt.inccommand = "split"
---> use :set inccommand=split  or :set inccommand=split
-- %s/your_search/change

-- Split direction
vim.opt.splitbelow = true
vim.opt.splitright = true

-- File protection
vim.opt.swapfile = true
vim.opt.backup = false
-- :set backup? --> melihat backup or nonbackup
-- :set backup
-- :set nonbackup

-- Catppuccin
vim.g.lazyvim_preferred_color_scheme = "catppuccin"

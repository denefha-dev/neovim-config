-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set : https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ============================================================

-- pindah baris kebawah (alt + arrow bawah)
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", { desc = "Move line down" })

-- pindah baris ke atas (alt + arrow atas)
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", { desc = "Move line up" })

-- versi visual mode (block) pindah kebawah
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- versi visual mode (block) pindah ke atas
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- ============================================================

-- ctrl + n (normal mode)
vim.keymap.set("i", "<C-n>", "<Esc>", { desc = "Exit insert mode" })

-- Ctrl + Enter → buat baris baru di bawah
vim.keymap.set("n", "<C-CR>", "o<Esc>", { desc = "New line below" })

-- ============================================================

-- Space + r + r → Reload Neovim configuration
vim.keymap.set("n", "<leader>rr", function()
  vim.cmd("source " .. vim.fn.stdpath("config") .. "/init.lua")
end, { desc = "Reload Neovim config" })

-- ============================================================

-- esc Clear search highlight
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight", silent = true })

-- Indent and keep selection
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

-- Unindent and keep selection
vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })

-- ============================================================

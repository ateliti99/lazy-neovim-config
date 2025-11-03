-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit insert mode by pressing 'jk'
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Enter command-line mode by pressing ';' in normal mode
vim.keymap.set("n", ";", ":", { noremap = true, silent = false })

-- Press Esc to leave terminal insert mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" }) -- Press Esc to leave terminal insert mode

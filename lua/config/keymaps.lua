-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>ai", ':AsyncRun nvim-gpt ""<left>')
map("n", "<leader>v", "<cmd>r! dm-nvim-names<cr>i<right> ")
map("n", "<leader>ute", "<cmd>set spelllang=en<cr>")
map("n", "<leader>uti", "<cmd>set spelllang=it<cr>")
map("n", "<leader>mp", "<cmd>r! nvim-pasteimg<cr>i<right> ")
map("n", "<leader>mt", "o<details> <cr> <summary></summary> <cr> </details> <up>")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
map("n", "<leader>ai", ':AsyncRun nvim-gpt ""<left>')
map("n", "<leader>v", "<cmd>r! nvim-names<cr>i<right> ")
map("n", "<leader>ute", "<cmd>set spelllang=en<cr>")
map("n", "<leader>uti", "<cmd>set spelllang=it.utf-8.spl<cr>")

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.api.nvim_set_keymap(
  "n",
  "<leader>wp",
  "<cmd>lua require('nvim-window').pick()<CR>",
  { noremap = true, silent = true, desc = "Pick a window" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>ur",
  "<cmd>lua require('precognition').toggle()<CR>",
  { noremap = true, silent = true, desc = "Toggle precognition" }
)

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
vim.api.nvim_set_keymap(
  "n",
  "<leader>si",
  "<cmd>TSInstallInfo<CR>",
  { noremap = true, silent = true, desc = "TreeSitter Info (use TSInstall)" }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>srr",
  '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
  { noremap = true, silent = true, desc = "Search on current file" }
)

vim.keymap.set("n", "<leader>fWW", function()
  path = require("neo-tree.sources.manager").get_state("filesystem").path
  vim.cmd(":cd" .. path)
  vim.cmd(":echo 'Changed directory to " .. path .. "'")
end, { noremap = true, silent = true, desc = "Change current working dir to neo-tree root dir" })
vim.keymap.set("n", "<leader>fW", function()
  vim.cmd("lcd %:p:h")
  vim.cmd(":echo 'Changed directory to " .. vim.fn.expand("%:p:h") .. "'")
end, { noremap = true, silent = true, desc = "Change working dir to buffer dir" })

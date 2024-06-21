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

vim.keymap.set("n", "<leader>br", function()
  path = require("neo-tree.sources.manager").get_state("filesystem").path
  vim.cmd(":cd" .. path)
end, { noremap = true, silent = true, desc = "Change current working dir to neo-tree root dir" })
vim.keymap.set("n", "<leader>bw", function()
  vim.cmd("lcd %:p:h")
end, { noremap = true, silent = true, desc = "Change working dir to buffer dir" })
vim.keymap.set("n", "<leader>bB", function()
  vim.cmd(":BufferLinePick")
end, { noremap = true, silent = true, desc = "Pick a buffer" })
vim.keymap.set("n", "<leader>uS", function()
  vim.cmd(":Screenkey")
end, { noremap = true, silent = true, desc = "Toggle Screenkey" })
vim.keymap.set("n", "<leader>uD", function()
  vim.cmd(":Dashboard")
end, { noremap = true, silent = true, desc = "Open nvim Dashboard" })
vim.keymap.set("n", "<leader>mG", function()
  vim.cmd("!gcc -g -Wall -Wextra  -gdwarf-4 % -o tmp.dbg")
end, { noremap = true, silent = true, desc = "Compile C/C++ with gcc debug flags" })

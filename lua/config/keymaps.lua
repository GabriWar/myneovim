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
  'n',
  '<leader>srr',
  '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
  { noremap = true, silent = true, desc = "Search on current file" }
)
vim.api.nvim_set_keymap('n', '<leader>Mg',
  '<cmd>CMakeGenerate<CR>',
  { noremap = true, silent = true, desc = "Generate C/C++ makefile" })
vim.api.nvim_set_keymap('n', '<leader>Mb',
  '<cmd>CMakeBuild<CR>',
  { noremap = true, silent = true, desc = "Build from C/C++ makefile" })
vim.api.nvim_set_keymap('n', '<leader>Mr',
  '<cmd>CMakeRun<CR>',
  { noremap = true, silent = true, desc = "Run from C/C++ makefile" })
vim.api.nvim_set_keymap('n', '<leader>Ms',
  '<cmd>CMakeSettings<CR>',
  { noremap = true, silent = true, desc = "Edit C/C++ makefile" })

vim.keymap.set('n', '<leader>fW', function()
  path = ((require("neo-tree.sources.manager").get_state("filesystem").path))
  vim.cmd(":cd" .. path)
  vim.cmd(":echo 'Changed directory to " .. path .. "'")
end,{ noremap = true, silent = true, desc = "Change current working dir to neo-tree root dir" })

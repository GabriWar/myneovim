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
vim.keymap.set("n", "<leader>srr", function()
  vim.cmd("lcd %:p:h")
  require("spectre").open_file_search({ select_word = true })
end, { noremap = true, silent = true, desc = "Search and replace on current file" })
vim.keymap.set("n", "<leader>srd", function()
  vim.cmd("lcd %:p:h")
  require("spectre").open_visual({ select_word = true })
end, { noremap = true, silent = true, desc = "Search and replace on current dir" })
vim.keymap.set("n", "<leader>mr", function()
  path = require("neo-tree.sources.manager").get_state("filesystem").path
  vim.cmd(":cd" .. path)
end, { noremap = true, silent = true, desc = "Change current working dir to neo-tree root dir" })
vim.keymap.set("n", "<leader>mw", function()
  vim.cmd("lcd %:p:h")
end, { noremap = true, silent = true, desc = "Change working dir to buffer dir" })
vim.keymap.set("n", "<leader>bB", function()
  vim.cmd(":BufferLinePick")
end, { noremap = true, silent = true, desc = "Pick a buffer" })
vim.keymap.set("n", "<leader>uS", function()
  vim.cmd(":Screenkey")
end, { noremap = true, silent = true, desc = "Toggle Screenkey" })
vim.keymap.set("n", "<leader>mD", function()
  vim.cmd(":Dashboard")
end, { noremap = true, silent = true, desc = "Open nvim Dashboard" })
vim.keymap.set("n", "<leader>mG", function()
  vim.cmd("!gcc -g -Wall -Wextra  -gdwarf-4 % -o tmp")
end, { noremap = true, silent = true, desc = "Grep current working dir" })
vim.keymap.set("n", "<leader>M", function()
  vim.cmd("Telescope live_grep")
end, { noremap = true, silent = true, desc = "Live grep" })
vim.keymap.set("n", "<F4>", function()
  vim.cmd("!gcc -g -Wall -Wextra  -gdwarf-4 % -o tmp")
end, { noremap = true, silent = true, desc = "Compile C/C++ with gcc debug flags" })
vim.keymap.set("n", "<F5>", function()
  vim.cmd("Neotree close")
  vim.cmd("DapNew")
end, { noremap = true, silent = true, desc = "DAP Run" })
vim.keymap.set("n", "<F7>", function()
  vim.cmd("DapStepInto")
end, { noremap = true, silent = true, desc = "DAP Step Into" })
vim.keymap.set("n", "<F8>", function()
  vim.cmd("DapStepOver")
end, { noremap = true, silent = true, desc = "DAP Step Over" })
vim.keymap.set("n", "<F9>", function()
  vim.cmd("Neotree close")
  vim.cmd("DapContinue")
end, { noremap = true, silent = true, desc = "DAP Continue" })
vim.keymap.set("n", "<F10>", function()
  vim.cmd("DapStepOut")
end, { noremap = true, silent = true, desc = "DAP Step Out" })
vim.keymap.set("n", "<F11>", function()
  vim.cmd(":DapToggleBreakpoint")
end, { noremap = true, silent = true, desc = "DAP Toggle Breakpoint" })
vim.keymap.set("n", "<F12>", function()
  vim.cmd("DapToggleRepl")
end, { noremap = true, silent = true, desc = "DAP Toggle Repl" })
vim.keymap.set("n", "<leader>ms", function()
  vim.cmd("SudaWrite")
end, { noremap = true, silent = true, desc = "Save with sudo" })

vim.keymap.set("n", "<leader>ma", function()
  vim.cmd("normal! ggVG")
end, { noremap = true, silent = true, desc = "Select all" })
vim.keymap.set("n", "<leader>mo", function()
  vim.cmd("so %")
end, { noremap = true, silent = true, desc = "Shout out file" })

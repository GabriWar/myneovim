-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- set current buffer as working dir (idk why this is not default??)
vim.cmd [[autocmd BufEnter * silent! lcd %:p:h]]

-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- set current buffer as working dir (idk why this is not default??)
-- vim.cmd [[autocmd BufEnter * silent! lcd %:p:h]]

function Set_root_to_neo_tree()
  local state = require("neo-tree.sources.manager").get_state("filesystem")
  vim.cmd("lcd " .. state.path)
end
--vim.cmd [[autocmd BufEnter * silent! lua Set_root_to_neo_tree()]]
-- print(require("neo-tree.sources.manager").get_state("filesystem").path)
function printCWDir()
  vim.notify(vim.fn.getcwd(), nil, { title = "Curent working directory:" })
end
function set_current_buffer_dir()
  local bufname = vim.fn.expand("%:p:h")
  vim.cmd("lcd " .. bufname)
  vim.notify("Current working directory: " .. bufname, nil, { title = "Curent working directory:" })
end
vim.api.nvim_create_autocmd({ "DirChanged" }, {
  pattern = { "*" },
  callback = function()
    printCWDir()
  end,
})

--vim.cmd("Screenkey")

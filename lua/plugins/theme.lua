--catppuccin config below
--return {
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "catppuccin",
--    },
--  },
--  {
--    "catppuccin/nvim",
--    name = "catppuccin",
--    opts = {
--      term_colors = true,
--      transparent_background = false,
--      styles = {
--        comments = {},
--        conditionals = {},
--        loops = {},
--        functions = {},
--        keywords = {},
--        strings = {},
--        variables = {},
--        numbers = {},
--        booleans = {},
--        properties = {},
--        types = {},
--      },
--      color_overrides = {
--        mocha = {
--          base = "#000000",
--          mantle = "#000000",
--          crust = "#000000",
--        },
--      },
--      integrations = {
--        cmp = true,
--        gitsigns = true,
--        nvimtree = true,
--        treesitter = true,
--        notify = true,
--        mini = true,
--        aerial = true,
--        barbar = true,
--        harpoon = true,
--        leap = true,
--        mason = true,
--        noice = true,
--        lsp_trouble = true,
--        which_key = true,
--        neotree = true,
--      },
--    },
--  },
--}
--return { "rebelot/kanagawa.nvim", {
--  "LazyVim/LazyVim",
--  opts = {
--    colorscheme = "kanagawa-dragon",
--  },
--} }

--return {
--  "bluz71/vim-moonfly-colors",
--  name = "moonfly",
--  {
--    "LazyVim/LazyVim",
--    opts = {
--      colorscheme = "moonfly",
--    },
--  },
--}}
--
return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("cyberdream").setup({
      transparent = true,
      italic_comments = true,
      hide_fillchars = true,

      borderless_telescope = false,

      theme = {
        highlights = {
          Visual = { bg = "#5800df" },
          Constant = { fg = "#ff00ff" },
        },
      },
    })
    vim.cmd("colorscheme cyberdream")
  end,
}

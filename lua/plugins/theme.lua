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
return { "rebelot/kanagawa.nvim", {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "kanagawa-dragon",
  },
} }
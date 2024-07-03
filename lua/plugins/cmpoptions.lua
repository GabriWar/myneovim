return {
  "hrsh7th/nvim-cmp",
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = {
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<M-l>"] = LazyVim.cmp.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
      ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
    }

    vim.o.pumblend = 0
    opts.window = {
      completion = {
        border = "rounded",
        winblend = vim.o.pumblend,
        winhighlight = "Normal:TelescopeNormal,FloatBorder:TelescopeBorder",
      },
      documentation = {
        border = "rounded",
        winblend = vim.o.pumblend,
        winhighlight = "Normal:TelescopeNormal,FloatBorder:TelescopeBorder",
      },
    }
  end,
}

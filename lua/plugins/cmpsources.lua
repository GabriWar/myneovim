return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    table.insert(opts.sources, { name = "emoji" })
    table.insert(opts.sources, { name = "copilot" })
    table.insert(opts.sources, { name = "buffer" })
    table.insert(opts.sources, { name = "nvim_lsp" })
  end,
}

return {
    -- stylua: ignore
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    table.remove(opts.left, 3)
    table.remove(opts.left, 2)
    opts.right = {}
    table.insert(opts.right, {
      ft = "copilot-chat",
      title = "Copilot Chat",
      size = { width = 40 },
    })
    opts.left = opts.left or {}
    table.insert(opts.left, {
      ft = "Outline",
      pinned = true,
      open = "OutlineOpen",
    })
    opts.bottom = opts.bottom or {}
  end,
}

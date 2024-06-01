return {
  "folke/edgy.nvim",
  optional = true,
  opts = function(_, opts)
    local edgy_idx = LazyVim.plugin.extra_idx("ui.edgy")
    local aerial_idx = LazyVim.plugin.extra_idx("editor.aerial")

    if edgy_idx and edgy_idx > aerial_idx then
      LazyVim.warn("The `edgy.nvim` extra must be **imported** before the `aerial.nvim` extra to work properly.", {
        title = "LazyVim",
      })
    end

    opts.left = opts.left or {}
    table.insert(opts.left, {
      title = "Aerial",
      ft = "aerial",
      pinned = true,
      open = "AerialOpen",
    })
  end,
}

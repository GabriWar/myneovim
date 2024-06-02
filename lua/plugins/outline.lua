return {
  "hedyhli/outline.nvim",
  lazy = false,
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

    require("outline").setup({
      outline_window = { focus_on_open = false },
      preview_window = { auto_preview = true },
    })
  end,
}

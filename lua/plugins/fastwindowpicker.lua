return {
  "https://gitlab.com/yorickpeterse/nvim-window.git",
  config = function()
    require("nvim-window").setup({
      normal_hl = "BlackOnLightYellow",
      hint_hl = "Bold",
      border = "none",
    })
  end,
}

return {
  "folke/edgy.nvim",
  keys = {
    {
      "<leader>ue",
      function()
        require("edgy").toggle()
      end,
      desc = "edgy toggle",
    },
  },
}

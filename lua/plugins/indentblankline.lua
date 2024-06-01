return {
  "lukas-reineke/indent-blankline.nvim",
  event = "LazyFile",
  opts = {

    scope = { show_start = true, show_end = true },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
    },
  },
  main = "ibl",
}

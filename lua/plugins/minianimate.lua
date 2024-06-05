return {
  "echasnovski/mini.animate",
  event = "VeryLazy",
  opts = function()
    local animate = require("mini.animate")
    return {
      cursor = {
        enable = false,
        --       path = animate.gen_path.spiral(),
        --        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
      resize = {
        enable = true,
      },
      scroll = {
        enable = false,
        timing = animate.gen_timing.linear({ duration = 200, unit = "total" }),
      },
      open = {
        enable = true,
      },
      close = {
        enable = true,
      },
    }
  end,
}

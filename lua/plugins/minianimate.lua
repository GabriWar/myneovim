return {
  "echasnovski/mini.animate",
  event = "VeryLazy",
  opts = function()
    local animate = require("mini.animate")
    return {
      cursor = {
        enable = true,
        path = animate.gen_path.line(),
        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
      resize = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
      scroll = {
        enable = false,
        timing = animate.gen_timing.linear({ duration = 200, unit = "total" }),
      },
      open = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
      close = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
    }
  end,
}

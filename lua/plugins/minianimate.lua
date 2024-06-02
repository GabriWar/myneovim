return {
  "echasnovski/mini.animate",
  recommended = true,
  event = "VeryLazy",
  opts = function()
    -- don't use animate when scrolling with the mouse
    local mouse_scrolled = false
    for _, scroll in ipairs({ "Up", "Down" }) do
      local key = "<ScrollWheel" .. scroll .. ">"
      vim.keymap.set({ "", "i" }, key, function()
        mouse_scrolled = true
        return key
      end, { expr = true })
    end

    local animate = require("mini.animate")
    return {
      cursor = {
        enable = true,
        path = animate.gen_path.spiral({ 3, 3 }),
        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
      resize = {
        enable = true,
        timing = animate.gen_timing.linear({ duration = 400, unit = "total" }),
      },
      scroll = {
        enable = false,
        timing = animate.gen_timing.linear({ duration = 200, unit = "total" }),

        subscroll = animate.gen_subscroll.equal({
          predicate = function(total_scroll)
            if mouse_scrolled then
              mouse_scrolled = false
              return false
            end
            return total_scroll > 1
          end,
        }),
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

return {
  "goolord/alpha-nvim",
  config = function()
    require("alpha").setup(require("alpha.themes.dashboard").config)
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      " ▄▀▀▀▀▄    ▄▀▀█▄   ▄▀▀█▄▄   ▄▀▀▄▀▀▀▄  ▄▀▀█▀▄   ▄▀▀▄    ▄▀▀▄  ▄▀▀█▄   ▄▀▀▄▀▀▀▄ ",
      "█         ▐ ▄▀ ▀▄ ▐ ▄▀   █ █   █   █ █   █  █ █   █    ▐  █ ▐ ▄▀ ▀▄ █   █   █ ",
      "█    ▀▄▄    █▄▄▄█   █▄▄▄▀  ▐  █▀▀█▀  ▐   █  ▐ ▐  █        █   █▄▄▄█ ▐  █▀▀█▀  ",
      "█     █ █  ▄▀   █   █   █   ▄▀    █      █      █   ▄    █   ▄▀   █  ▄▀    █  ",
      "▐▀▄▄▄▄▀ ▐ █   ▄▀   ▄▀▄▄▄▀  █     █    ▄▀▀▀▀▀▄    ▀▄▀ ▀▄ ▄▀  █   ▄▀  █     █  ",
      "▐         ▐   ▐   █    ▐   ▐     ▐   █       █         ▀    ▐   ▐   ▐     ▐   ",
    }
  end,
}

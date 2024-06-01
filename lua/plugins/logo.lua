return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
 ▄▀▀▀▀▄    ▄▀▀█▄   ▄▀▀█▄▄   ▄▀▀▄▀▀▀▄  ▄▀▀█▀▄   ▄▀▀▄    ▄▀▀▄  ▄▀▀█▄   ▄▀▀▄▀▀▀▄ 
█         ▐ ▄▀ ▀▄ ▐ ▄▀   █ █   █   █ █   █  █ █   █    ▐  █ ▐ ▄▀ ▀▄ █   █   █ 
█    ▀▄▄    █▄▄▄█   █▄▄▄▀  ▐  █▀▀█▀  ▐   █  ▐ ▐  █        █   █▄▄▄█ ▐  █▀▀█▀  
█     █ █  ▄▀   █   █   █   ▄▀    █      █      █   ▄    █   ▄▀   █  ▄▀    █  
▐▀▄▄▄▄▀ ▐ █   ▄▀   ▄▀▄▄▄▀  █     █    ▄▀▀▀▀▀▄    ▀▄▀ ▀▄ ▄▀  █   ▄▀  █     █   
▐         ▐   ▐   █    ▐   ▐     ▐   █       █         ▀    ▐   ▐   ▐     ▐   
                  ▐                  ▐       ▐                                

            ]]

      local currentDate = os.date("%x") -- Get current date in locale's date format
      logo = string.rep("\n", 8) .. logo .. "\n\n" .. currentDate .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
      opts.theme = "doom"
    end,
  },
}

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

      local currentDate = os.date("%d/%m/%Y")
      logo = string.rep("\n", 8) .. logo .. "\n\n" .. currentDate .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}

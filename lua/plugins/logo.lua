return {
  "nvimdev/dashboard-nvim",
  lazy = false,
  opts = function()
    local logo = [[
 ▄▀▀▀▀▄    ▄▀▀█▄   ▄▀▀█▄▄   ▄▀▀▄▀▀▀▄  ▄▀▀█▀▄   ▄▀▀▄    ▄▀▀▄  ▄▀▀█▄   ▄▀▀▄▀▀▀▄ 
█         ▐ ▄▀ ▀▄ ▐ ▄▀   █ █   █   █ █   █  █ █   █    ▐  █ ▐ ▄▀ ▀▄ █   █   █ 
█    ▀▄▄    █▄▄▄█   █▄▄▄▀  ▐  █▀▀█▀  ▐   █  ▐ ▐  █        █   █▄▄▄█ ▐  █▀▀█▀  
█     █ █  ▄▀   █   █   █   ▄▀    █      █      █   ▄    █   ▄▀   █  ▄▀    █  
▐▀▄▄▄▄▀ ▐ █   ▄▀   ▄▀▄▄▄▀  █     █    ▄▀▀▀▀▀▄    ▀▄▀ ▀▄ ▄▀  █   ▄▀  █     █   
▐         ▐   ▐   █    ▐   ▐     ▐   █       █         ▀    ▐   ▐   ▐     ▐   
                  ▐                  ▐       ▐                                

 
   ]]

    return {
      config = {
        header = vim.split(logo, "\n"),
      },
    }
  end,
}

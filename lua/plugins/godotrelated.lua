return {
  -- add the LSP server configuration through lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      -- ---@type lspconfig.options
      --

      servers = {
        gdscript = {}, -- NOTE: To change the port, you need to set the environment variable GDScript_Port to the correct port number.
      },
    },
  },

  -- add an nvim-dap configuration for gdscript and a DAP client adapter configuration for it.
  {
    "mfussenegger/nvim-dap",
    opts = {},
    config = function(_, opts)
      local dap = require("dap")
      dap.configurations.gdscript = {
        {
          type = "godot",
          request = "launch",
          name = "Launch scene",
          project = "${workspaceFolder}",
          launch_scene = true,
        },
      }
      dap.adapters.godot = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
      }
    end,
  },
}

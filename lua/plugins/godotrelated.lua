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
}

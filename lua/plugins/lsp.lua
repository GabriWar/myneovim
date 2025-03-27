return {
  "neovim/nvim-lspconfig",
  opts = function()
    require("lspconfig").arduino_language_server.setup({
      cmd = {
        "arduino-language-server",
        "-clangd",
        "C:/msys64/mingw64/bin/clangd.exe",
        "-cli",
        "C:/Program Files/Arduino CLI/arduino-cli.exe",
        "-cli-config",
        "C:/Users/danie/AppData/Local/Arduino15/arduino-cli.yaml",
        "-fqbn",
        "arduino:esp32:nano_nora",
      },
    })
  end,
}

-- No example configuration was found for this plugin.
--
-- For detailed information on configuring this plugin, please refer to its
-- official documentation:
--
--   https://github.com/mrcjkb/rustaceanvim
--
-- If you wish to use this plugin, you can optionally modify and then uncomment
-- the configuration below.

return {
  "mrcjkb/rustaceanvim",
  version = "^4", -- Recommended
  lazy = false,
  config = function()
    vim.g.rustaceanvim = {
      server = {
        cmd = function()
          local mason_registry = require("mason-registry")
          local ra_binary = mason_registry.is_installed("rust-analyzer")
              -- This may need to be tweaked, depending on the operating system.
              and mason_registry.get_package("rust-analyzer"):get_install_path() .. "/rust-analyzer"
            or "rust-analyzer"
          return { ra_binary } -- You can add args to the list, such as '--log-file'
        end,
      },
    }
  end,
}

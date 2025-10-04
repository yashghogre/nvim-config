return {
  "mrcjkb/rustaceanvim",

  version = "^5",
  lazy = false,
  ft = { "rust" },

  config = function()
    vim.g.rustaceanvim = {
      server = {
        default_settings = {
          ["rust_analyzer"] = {
            inlayHints = {
              bindingModeHints = { enable = true },
              chainingHints = { enable = true },
              closingBraceHints = { enable = true, minLines = 25 },
              closureReturnTypeHints = { enable = "always" },
              lifetimeElisionHints = { enable = "always", useParameterNames = true },
              maxLength = 25,
              parameterHints = { enable = true },
              reborrowHints = { enable = "always" },
              renderColons = true,
              typeHints = { enable = true, hideNamedConstructor = false },
            },
            checkOnSave = {
              command = "clippy",
            },
            proMacro = {
              enable = true,
            },
            cargo = {
              allFeatures = true,
              loadOutDirsFromCheck = true,
              buildScripts = {
                enable = true,
              },
            },
          }
        }
      }
    }
  end,
}

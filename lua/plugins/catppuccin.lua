return {
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    require("catppuccin").setup(
      {
        transparent_background = true,
        flavour = "macchiato",
        background = {
          light = "latte",
          dark = "mocha"
        }
      }
    )
    vim.cmd.colorscheme "catppuccin"
  end
  }


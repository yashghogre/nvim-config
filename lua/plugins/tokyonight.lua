return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  config = function()
--    vim.cmd.colorscheme "tokyonight-moon"
--    vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
  end
}
 

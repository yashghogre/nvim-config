return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "vimdoc",
        "vim",
        "lua",
        "python",
        "javascript",
        "html",
        "css",
        "rust",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
    })
  end,
}

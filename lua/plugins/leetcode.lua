return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  lazy = false,
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    injector = {
      ["cpp"] = {
        before = { "#include <bits/stdc++.h>", "using namespace std;"},
      },
    },
  },
}

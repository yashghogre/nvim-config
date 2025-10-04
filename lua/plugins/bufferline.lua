return {
  "akinsho/bufferline.nvim",

  version="v*",

  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },

  config = function()
    require("bufferline").setup()

    vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', {
      desc = "Go to previous buffer",
      silent = true,
    })

    vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', {
      desc = "Go to next buffer",
      silent = true,
    })

    vim.keymap.set('n', '<S-c>', ':bdelete<CR>', {
      desc = "Close current buffer",
      silent = true,
    })

  end
}

return {
    "goolord/alpha-nvim",

    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      local startify = require("alpha.themes.startify")
      local alpha = require'alpha'
      local dashboard = require'alpha.themes.dashboard'
      
      vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ff79c6", bg = "NONE", bold = true })
      

      startify.file_icons.provider = "devicons"
      require("alpha").setup(
        startify.config
      )

      dashboard.section.header.val = {
        [[  ]],
        [[ ██╗   ██╗ █████╗ ██╗   ██╗ █████╗  ]],
        [[ ╚██╗ ██╔╝██╔══██╗╚██╗ ██╔╝██╔══██╗ ]],
        [[  ╚████╔╝ ███████║ ╚████╔╝ ███████║ ]],
        [[   ╚██╔╝  ██╔══██║  ╚██╔╝  ██╔══██║ ]],
        [[    ██║   ██║  ██║   ██║   ██║  ██║ ]],
        [[    ╚═╝   ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝ ]],
        [[  ]],
      }

      alpha.setup(dashboard.opts)
    end,
  }

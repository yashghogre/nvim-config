return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  config = function()
    local servers = {
      "clangd",
      "lua_ls",
      "pyright",
      "ts_ls",
      "rust_analyzer",
    }

    require("mason").setup()

    for _, server_name in ipairs(servers) do
      vim.lsp.config(server_name, {
        cmd_env = {},
        root_markers = {},
      })
    end

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(args)
        local bufnr = args.buf
        local opts = {buffer = bufnr}

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, opts)
      end,
    })

    require("mason-lspconfig").setup({
      ensure_installed = servers,
      handlers = {
        function(server_name)
          vim.lsp.enable(server_name)
        end,
      }
    })
  end,
}

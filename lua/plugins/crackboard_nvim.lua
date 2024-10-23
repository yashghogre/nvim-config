return {
    'boganworld/crackboard.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('crackboard').setup({
        session_key = 'eb95f88c4d33752728ec578400de3a5e8cc53dca019588d861dede53cc717951',
      })
    end,
  }

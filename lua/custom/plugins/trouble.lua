return {
  'folke/trouble.nvim',
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  keys = {
    {
      '<leader>q',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Open diagnostic [Q]uickfix list',
    },
    {
      '<leader>cl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = 'LSP Definitions / references',
    },
  },
}

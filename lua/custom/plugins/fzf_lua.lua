return {
  {
    'ibhagwan/fzf-lua',
    cmd = 'FzfLua',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'nvim-treesitter-context' },
    event = { 'VimEnter' },
    opts = function()
      return {
        'telescope',
        actions = {
          files = {
            ['ctrl-t'] = require('trouble.sources.fzf').actions.open,
          },
        },
        lsp = {
          jump1 = false,
        },
        fzf_opts = { ['--cycle'] = true },
      }
    end,
    keys = {
      { '<leader>:', '<cmd>FzfLua command_history<cr>', desc = '[:] Command History' },
      { '<leader><leader>', '<cmd>FzfLua files<cr>', desc = '[ ] Search Files' },
      { '<leader>sr', '<cmd>FzfLua oldfiles<cr>', desc = '[S]earch [R]ecent Files' },
      { '<leader>sb', '<cmd>FzfLua buffers sort_mru=true sort_lastused=true<cr>', desc = '[S]earch [B]uffers' },
      { '<leader>sd', '<cmd>FzfLua diagnostics_workspace<cr>', desc = '[S]earch [D]iagnostics' },
      { '<leader>sg', '<cmd>FzfLua live_grep<cr>', desc = '[S]earch by [G]rep' },
      { '<leader>sh', '<cmd>FzfLua help_tags<cr>', desc = '[S]earch [H]elp' },
      { '<leader>sj', '<cmd>FzfLua jumps<cr>', desc = '[S]earch [J]umplist' },
      { '<leader>sk', '<cmd>FzfLua keymaps<cr>', desc = '[S]earch [K]eymaps' },
      {
        '<leader>sn',
        function()
          require('fzf-lua').files { cwd = vim.fn.stdpath 'config' }
        end,
        desc = '[S]earch [N]eovim files',
      },
      { '<leader>s.', '<cmd>FzfLua resume<cr>', desc = '[S]earch Resume ("." for repeat)' },
    },
  },
}

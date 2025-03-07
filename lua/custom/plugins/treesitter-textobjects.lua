return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  event = 'VeryLazy',
  opts = {
    textobjects = {
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          [']m'] = { query = '@function.outer', desc = 'Next function start' },
          [']]'] = { query = '@class.outer', desc = 'Next class start' },
        },
        goto_next_end = {
          [']M'] = { query = '@function.outer', desc = 'Next function end' },
          [']['] = { query = '@class.outer', desc = 'Next class end' },
        },
        goto_previous_start = {
          ['[m'] = { query = '@function.outer', desc = 'Previous function start' },
          ['[['] = { query = '@class.outer', desc = 'Previous class start' },
        },
        goto_previous_end = {
          ['[M'] = { query = '@function.outer', desc = 'Previous function end' },
          ['[]'] = { query = '@class.outer', desc = 'Previous class end' },
        },
      },
    },
  },
  config = function(opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
}

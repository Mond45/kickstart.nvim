return {
  'nvim-treesitter/nvim-treesitter-context',
  event = { 'BufReadPost', 'BufWritePost', 'BufNewFile' },
  opts = {
    multiwindow = true,
  },
}

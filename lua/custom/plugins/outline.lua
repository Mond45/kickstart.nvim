return {
  {
    'hedyhli/outline.nvim',
    opts = function()
      local defaults = require('outline.config').defaults
      local opts = {
        symbols = {
          icons = {},
        },
        keymaps = {
          up_and_jump = '<up>',
          down_and_jump = '<down>',
        },
      }

      local icons = {
        Array = ' ',
        Boolean = '󰨙 ',
        Class = ' ',
        Codeium = '󰘦 ',
        Color = ' ',
        Control = ' ',
        Collapsed = ' ',
        Constant = '󰏿 ',
        Constructor = ' ',
        Copilot = ' ',
        Enum = ' ',
        EnumMember = ' ',
        Event = ' ',
        Field = ' ',
        File = ' ',
        Folder = ' ',
        Function = '󰊕 ',
        Interface = ' ',
        Key = ' ',
        Keyword = ' ',
        Method = '󰊕 ',
        Module = ' ',
        Namespace = '󰦮 ',
        Null = ' ',
        Number = '󰎠 ',
        Object = ' ',
        Operator = ' ',
        Package = ' ',
        Property = ' ',
        Reference = ' ',
        Snippet = '󱄽 ',
        String = ' ',
        Struct = '󰆼 ',
        Supermaven = ' ',
        TabNine = '󰏚 ',
        Text = ' ',
        TypeParameter = ' ',
        Unit = ' ',
        Value = ' ',
        Variable = '󰀫 ',
      }

      for kind, symbol in pairs(defaults.symbols.icons) do
        opts.symbols.icons[kind] = {
          icon = icons[kind] or symbol.icon,
          hl = symbol.hl,
        }
      end
      return opts
    end,
    keys = {
      {
        '<leader>o',
        '<cmd>Outline<CR>',
        desc = 'Toggle Outline',
      },
    },
  },
}

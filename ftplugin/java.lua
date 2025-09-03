require('jdtls').start_or_attach {
  cmd = {
    vim.fn.expand '$HOME/.local/share/nvim/mason/bin/jdtls',
    '--jvm-arg=' .. string.format('-javaagent:%s', vim.fn.expand '$MASON/share/jdtls/lombok.jar'),
  },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
}

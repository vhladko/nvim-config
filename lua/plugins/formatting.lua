return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format({ async = true, lsp_fallback = true })
        end,
        mode = { 'n', 'x' },
        desc = 'Format buffer',
      },
    },
    opts = {
      formatters_by_ft = {
        css = { 'prettier' },
        graphql = { 'prettier' },
        html = { 'prettier' },
        javascript = { 'prettier' },
        javascriptreact = { 'prettier' },
        json = { 'prettier' },
        less = { 'prettier' },
        markdown = { 'prettier' },
        scss = { 'prettier' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        yaml = { 'prettier' },
      },
    },
  },
}

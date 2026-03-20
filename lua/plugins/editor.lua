return {
  { 'numToStr/Comment.nvim', opts = {} },
  'tpope/vim-sleuth',

  {
    'echasnovski/mini.surround',
    version = '*',
    opts = {},
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },

  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {},
  },

  {
    'stevearc/oil.nvim',
    keys = {
      { '-', '<cmd>Oil<cr>', desc = 'Open parent directory' },
    },
    opts = {},
  },
}

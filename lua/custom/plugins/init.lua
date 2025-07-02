-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'lervag/vimtex',
    lazy = false, -- lazy-loading will disable inverse search
    config = function()
      vim.g.vimtex_view_method = 'zathura'
      vim.g.vimtex_compiler_latexmk = {
        options = {
          '-outdir=out',
        },
      }
    end,
  },
  'aspeddro/gitui.nvim',
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {--[[ things you want to change go here]]
    },
  },
  'tpope/vim-surround',
  'anurag3301/nvim-platformio.lua',
  dependencies = {
    { 'akinsho/nvim-toggleterm.lua' },
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-lua/plenary.nvim' },
  },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>xx',
        '<cmd>Trouble diagnostics toggle<cr>',
        desc = 'Diagnostics (Trouble)',
      },
      {
        '<leader>xX',
        '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
        desc = 'Buffer Diagnostics (Trouble)',
      },
      {
        '<leader>cs',
        '<cmd>Trouble symbols toggle focus=false<cr>',
        desc = 'Symbols (Trouble)',
      },
      {
        '<leader>cl',
        '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
        desc = 'LSP Definitions / references / ... (Trouble)',
      },
      {
        '<leader>xL',
        '<cmd>Trouble loclist toggle<cr>',
        desc = 'Location List (Trouble)',
      },
      {
        '<leader>xQ',
        '<cmd>Trouble qflist toggle<cr>',
        desc = 'Quickfix List (Trouble)',
      },
    },
  },
}

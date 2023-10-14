-- **************** The Nut Busted NeoVim Config *******************
-- * Created By: Michael Davis                                     *
-- * Last Updated: 09/16/23                                        *
-- * You are free to do as wish with this config file under WTFPL  *
-- *****************************************************************
vim.cmd([[
set nocompatible
set shortmess+=I
set number
set relativenumber
set timeoutlen=600
syntax on

" Coding Settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=100
]])

vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true})
    end 

    -- edit new file
--    bind('n', '%')

    -- rename file
 --   bind('r', 'R')
    bind('<space>', '<CR>')
  end
})
require("nutbusted")


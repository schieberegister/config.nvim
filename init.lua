require "user.plugins"
require "user.keybindings"

-- classic vim options
  -- global options
  vim.go.clipboard = "unnamedplus"
  vim.go.ruler = true
  vim.go.mouse = "a"
  vim.go.smarttab = true
  vim.go.ma = true 
  vim.go.background = "dark"
  vim.go.updatetime = 100

  -- windows options
  vim.wo.number = true
  vim.wo.relativenumber = true

  -- buffer option
  vim.bo.autoindent = true
  vim.bo.tabstop = 2
  vim.bo.shiftwidth = 2
  vim.bo.expandtab = true
  vim.bo.softtabstop = 2

  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

-- statusline
  vim.opt.termguicolors = true
  local statusline = require('statusline')
  statusline.tabline = false
  vim.o.laststatus=3


vim.cmd('colorscheme PaperColor')



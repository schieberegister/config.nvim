require("user.plugins")
require("user.keymap")

  -- vim options
	  -- globals
	  vim.go.ruler = true
	  vim.go.mouse = "a"
	  vim.go.background = "dark"
	  vim.go.showmode = false
	  vim.go.scrolloff = 5
    vim.go.showmatch = true
    vim.cmd('colorscheme PaperColor')
    vim.cmd('set clipboard=unnamed')

	  -- window options
	  vim.wo.number = true
	  vim.wo.relativenumber = true

	  -- buffer options
	  vim.bo.tabstop = 2
	  vim.bo.expandtab = true
    vim.bo.softtabstop = 2
    vim.bo.preserveindent = true
    vim.bo.copyindent = true
    vim.bo.autoindent = true
    vim.bo.shiftwidth = 0
    vim.cmd('autocmd FileType * set formatoptions-=cro') -- disable crappy continuation of comments

require "user.plugins"
require "user.keybindings"

-- classic vim options
  -- global options
  vim.go.clipboard = "unnamed"
  vim.go.ruler = true
  vim.go.mouse = "a"
  vim.go.smarttab = true
  vim.go.ma = true 
  vim.go.background = "dark"
  vim.go.updatetime = 100

  -- window options
  vim.wo.number = true
  vim.wo.relativenumber = true
  vim.cmd "set noshowmode"

  -- buffer option
  vim.bo.autoindent = true
  vim.bo.tabstop = 2
  vim.bo.shiftwidth = 2
  vim.bo.expandtab = true
  vim.bo.softtabstop = 2
  vim.cmd('colorscheme PaperColor')
  vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
  
require('Comment').setup()
require("lsp-status")
require "user.lualine"
require("bufferline").setup{}

require'nvim-lastplace'.setup {
    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
    lastplace_open_folds = true
}

require("nvim-treesitter.configs").setup({
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
})

require "user.lsp-init"


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
  -- vim.bo.tabstop = 2
  -- vim.bo.shiftwidth = 2
  -- vim.bo.expandtab = true
  -- vim.bo.softtabstop = 2
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

require("neo-tree").setup({
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
      modified = {
      symbol = "[+]",
      highlight = "NeoTreeModified",
      },
      git_status = {
        symbols = {
          -- Change type
          added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted   = "✖",-- this can only be used in the git_status source
          renamed   = "",-- this can only be used in the git_status source
          -- Status type
          untracked = "",
          ignored   = "",
          unstaged  = "",
          staged    = "",
          conflict  = "",
        }
      },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    }
  }
})

require "user.lsp-init"
require "user.dap-init"

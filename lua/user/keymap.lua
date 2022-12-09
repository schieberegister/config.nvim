-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = " "

map("n", "to", ":tabnew<CR>", { silent = true })
map("n", "tc", ":BufferLinePick<CR>", { silent = true })
map("n", "tn", ":BufferLineCycleNext<CR>", { silent = true })
map("n", "tp", ":BufferLineCyclePrev<CR>", { silent = true })
map("n", "td", ":BufferLinePickClose<CR>", { silent = true })
map("n", "<leader>t", ":Neotree<CR>", { silent = true })
map("n", "<leader>ff", ":Telescope find_files<CR>", { silent = true })
map("n", "<leader>fg", ":Telescope live_grep<CR>", { silent = true })
map("n", "<leader>fb", ":Telescope buffers<CR>", { silent = true })
map("n", "<leader>fh", ":Telescope help_tags<CR>", { silent = true })
map("n", "<leader>tt", ":TroubleToggle<CR>", { silent = true })
map("n", "<leader>s", ":lua require'hop'.hint_words()<cr>", { silent = true })

-- splitpane navigation
  map("n", "<leader>j", "<C-W>j", { silent = true })
  map("n", "<leader>k", "<C-W>k", { silent = true })
  map("n", "<leader>h", "<C-W>h", { silent = true })
  map("n", "<leader>l", "<C-W>l", { silent = true })
  map("n", "<leader>J", ":resize -10<CR>", { silent = true })
  map("n", "<leader>K", ":resize +10<CR>", { silent = true })
  map("n", "<leader>H", ":vertical resize -10<CR>", { silent = true })
  map("n", "<leader>L", ":vertical resize +10<CR>", { silent = true })

-- lsp
  vim.keymap.set('n', 'K', vim.lsp.buf.hover)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
  vim.keymap.set('n', 'rn', vim.lsp.buf.rename)

-- nvim-dap keybindings
  map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", { silent = true })
  map("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { silent = true })
  map("n", "<leader>dl", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { silent = true })
  map("n", "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", { silent = true })
  map("n", "<leader>ds", "<cmd>lua require'dap'.step_over()<CR>", { silent = true })
  map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", { silent = true })
  map("n", "<leader>do", "<cmd>lua require'dap'.step_out()<CR>", { silent = true })
  map("n", "<leader>dt", "<cmd>lua require'dap'.run_to_cursor()<CR>", { silent = true })
  map("n", "<leader>dv", "<cmd>lua require'dap'.ui.variables()<CR>", { silent = true })
  map("n", "<leader>df", "<cmd>lua require'dap'.ui.frames()<CR>", { silent = true })
  map("n", "<leader>ds", "<cmd>lua require'dap'.close(); require('dapui').close()<CR>", { silent = true })

-- copilot
  vim.cmd('imap <silent><script><expr> <C-g> copilot#Accept("\\<CR>")')
  vim.cmd('let g:copilot_no_tab_map = v:true')


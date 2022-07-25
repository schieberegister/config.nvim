-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keybindings for cutting
map("n", "m", "d", { silent = true })
map("x", "m", "d", { silent = true })
map("n", "M", "D", { silent = true })
map("n", "mm", "dd", { silent = true })


vim.g.mapleader = " "

map("n", "<leader>r", ":BufferLinePick<CR>")
map("n", "<leader>q", ":BufferLinePickClose<CR>")
map("n", "<leader>w", ":BufferLineMovePrev<CR>")
map("n", "<leader>e", ":BufferLineMoveNext<CR>")
map("n", "<leader>t", ":Neotree<CR>")
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")

vim.api.nvim_set_keymap('', '<leader>l', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', '<leader>L', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', '<leader>h', "<cmd>lua require'hop'.hint_words()<cr>", {})

vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'rn', vim.lsp.buf.rename)


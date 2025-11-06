local keymap = vim.keymap.set

-- Ctrl-S to save in all modes
vim.keymap.set('n', '<C-s>', '<cmd>write<CR>')
vim.keymap.set('i', '<C-s>', '<Esc><cmd>write<CR>')
vim.keymap.set('v', '<C-s>', '<Esc><cmd>write<CR>')

-- Navigate buffers
keymap('n', '<S-l>', ':bnext<CR>')
keymap('n', '<S-h>', ':bprevious<CR>')

-- Move text up and down
keymap('n', '<A-j>', ':m .+1<CR>==')
keymap('n', '<A-k>', ':m .-2<CR>==')
keymap('v', '<A-j>', ":m '>+1<CR>gv=gv")
keymap('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Press jk fast to exit insert mode
keymap('i', 'jk', '<ESC>')
keymap('i', 'kj', '<ESC>')

-- Stay in indent mode
keymap('v', '<', '<gv^')
keymap('v', '>', '>gv^')

-- Paste to not replace register
keymap('v', 'p', '"_dP')

-- toggle comment like vscode
keymap('n', '<C-/>', 'gcc', { desc = 'Comment out' })
keymap('v', '<C-/>', 'gc', { desc = 'Comment out' })

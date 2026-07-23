vim.pack.add {
  'https://github.com/christoomey/vim-tmux-navigator',
}

local keymap = vim.keymap.set

keymap('n', '<C-h>', '<Cmd><C-U>TmuxNavigateLeft<CR>', { silent = true })
keymap('n', '<C-j>', '<Cmd><C-U>TmuxNavigateDown<CR>', { silent = true })
keymap('n', '<C-k>', '<Cmd><C-U>TmuxNavigateUp<CR>', { silent = true })
keymap('n', '<C-l>', '<Cmd><C-U>TmuxNavigateRight<CR>', { silent = true })
keymap('n', '<C-\\>', '<Cmd><C-U>TmuxNavigatePrevious<CR>', { silent = true })

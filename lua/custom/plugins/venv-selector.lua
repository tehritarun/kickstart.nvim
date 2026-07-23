-- Install plugins
vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/linux-cultist/venv-selector.nvim',
}

-- Configure the plugin
require('venv-selector').setup {
  options = {},
  search = {},
}

-- Keymap
vim.keymap.set('n', ',v', '<Cmd>VenvSelect<CR>', {
  desc = 'Select Python virtual environment',
  silent = true,
})

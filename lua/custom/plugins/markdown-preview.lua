-- markdown-preview.nvim
-- https://github.com/iamcco/markdown-preview.nvim

-- Run the build step when the plugin is installed or updated via vim.pack
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name = ev.data.spec.name
    local kind = ev.data.kind
    if (kind == 'install' or kind == 'update') and name == 'markdown-preview.nvim' then
      if not ev.data.active then vim.cmd.packadd 'markdown-preview.nvim' end
      vim.fn['mkdp#util#install']()
    end
  end,
})

-- Add plugin
vim.pack.add {
  'https://github.com/iamcco/markdown-preview.nvim',
}

-- Set browser for KDE Plasma
-- vim.g.mkdp_browser = 'chromium'

-- Set default theme [light/dark]
vim.g.mkdp_theme = 'dark'

-- Only enable for markdown filetypes
--vim.g.mkdp_filetypes = { 'markdown' }

-- Display preview URL in the command line (helpful to verify server status)
vim.g.mkdp_echo_preview_url = 1

-- Optional: Keymap to toggle Markdown Preview
vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', { desc = 'Markdown Preview Toggle' })

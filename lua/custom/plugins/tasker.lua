return {
  'tehritarun/tasker.nvim',
  config = function()
    local tasker = require 'tasker'

    -- Optional: Configure width
    tasker.setup { width = 60, target_file = '~/projects/snippets/todo.md' }

    vim.keymap.set('n', '<leader>td', '<cmd>Td<cr>', { desc = 'Open Todo' })

    -- Keymaps
    vim.keymap.set('n', '<leader>ct', tasker.makeTitle, { desc = 'Make Title' })
    vim.keymap.set('n', '<leader>cs', tasker.makeSubTitle, { desc = 'Make Subtitle' })

    vim.keymap.set({ 'n', 'v' }, '<leader>cc', tasker.makeItem, { desc = 'Make item' })
    vim.keymap.set({ 'n', 'v' }, '<leader>cm', tasker.markItem, { desc = 'Mark item' })
    vim.keymap.set({ 'n', 'v' }, '<leader>cu', tasker.unmarkItem, { desc = 'Unmark item' })
  end,
}

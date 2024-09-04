-- Vim general keymaps
vim.keymap.set('i', 'jk', '<Esc>l', { noremap = true, silent = true })

vim.g.mapleader = " "
vim.g.maplocal = " "


-- Plugin keymaps
vim.keymap.set("n", "-","<CMD>Oil<CR>", { desc = "Open parent directory" })



-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

local telescope = require('telescope')

telescope.setup{
    pickers = {
        find_files = {
            theme = "ivy",
        }
    }
}

telescope.load_extension("git_worktree")

local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<C-P>', "<cmd>lua require('telescope.builtin').find_files()<CR>", opts)
keymap('n', '<C-F>', "<cmd>lua require('telescope.builtin').live_grep()<CR>", opts)
keymap('n', '<C-B>', "<cmd>lua require('telescope.builtin').buffers()<CR>", opts)
keymap('n', '<C-T>', "<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", opts)

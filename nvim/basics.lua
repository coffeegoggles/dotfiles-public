vim.g.mapleader = " "
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.o.wrap = false
vim.o.number = true
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.ignorecase = true
vim.o.scrolloff = 2
vim.o.mouse = 'a'

local opts = { noremap = true }
local keymap = vim.api.nvim_set_keymap

keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)
keymap('n', 'vs', ':vs<CR>', opts)
keymap('n', 'sp', ':sp<CR>', opts)
keymap('n', '<C-L>', '<C-W><C-L>', opts)
keymap('n', '<C-H>', '<C-W><C-H>', opts)
keymap('n', '<C-K>', '<C-W><C-K>', opts)
keymap('n', '<C-J>', '<C-W><C-J>', opts)
keymap('n', 'tn', ':tabnew<CR>', opts)
keymap('n', 'tk', ':tabnext<CR>', opts)
keymap('n', 'tj', ':tabprev<CR>', opts)
keymap('n', 'to', ':tabo<CR>', opts)
keymap('n', '<C-F>', ':%s/', opts)
keymap('n', '<C-N>', ":Lexplore<CR> :vertical resize 30<CR>", opts)
keymap('n', '<leader>t', ':sp<CR> :term<CR> :resize 20N<CR> i', { noremap = true, silent = true })
keymap('n', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

vim.g["netrw_banner"] = 0
vim.g["netrw_listsytle"] = 3
vim.g["netrw_winsize"] = 25

require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'preservim/nerdtree'
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'
    use 'ThePrimeagen/git-worktree.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
end)

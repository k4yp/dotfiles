local Plug = vim.fn['plug#']
local set = vim.opt

vim.call('plug#begin')
    Plug ('shaunsingh/oxocarbon.nvim', { ['do'] = './install.sh' })
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'neovim/nvim-lspconfig'
    Plug 'rust-lang/rust.vim'
vim.call('plug#end')

vim.opt.showmatch = true

set.mouse = v
vim.cmd [[colorscheme zsnake]]
set.termguicolors = true
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.number = true
set.splitright = true
set.laststatus = 0

vim.g.NERDTreeMinimalUI=1
vim.wo.relativenumber = true

vim.api.nvim_set_keymap('n', '<C-d>', ':NERDTreeToggle <bar> set ma <CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-t>', ':vsplit <bar> term<CR> i', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-q>', ':close<CR>', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-q>', '<C-\\><C-n><bar>:close<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W>l<bar>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W>h<bar>', {noremap = true})
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n><C-W>h', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-W>h', {noremap = true})
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-W>l', {noremap = true})

vim.api.nvim_set_keymap("i", "<TAB>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes = false})

vim.cmd[[
augroup TerminalLineNumbers
  au!
  autocmd TermOpen * setlocal nonumber norelativenumber
  autocmd VimEnter *  NERDTree 
  autocmd VimEnter * wincmd p
augroup END
]]


vim.api.nvim_command([[
augroup RunFile
    autocmd filetype python nnoremap <C-e> :w <bar> vsplit <bar> exec 'term python '.shellescape('%')<CR>
    autocmd nnoremap <C-e> :w <bar> vsplit <bar> exec 'term cargo run'<CR>
    autocmd filetype cpp nnoremap <C-e> :w <bar> vsplit <bar> exec 'term g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR> i
    autocmd filetype c nnoremap <C-e> :w <bar> vsplit <bar> exec 'term gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR> i
augroup END
]])

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

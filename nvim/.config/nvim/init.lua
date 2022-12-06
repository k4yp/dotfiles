local Plug = vim.fn['plug#']
local set = vim.opt

vim.call('plug#begin')
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim'
    Plug 'ryanoasis/vim-devicons'
    Plug 'neovim/nvim-lspconfig'
vim.call('plug#end')

set.mouse = v
vim.cmd [[colorscheme torte]]
vim.cmd [[highlight Normal guibg=#000000]]
set.termguicolors = true
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.number = true
set.splitright = true

vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', {noremap = true})

vim.api.nvim_set_keymap("i", "<TAB>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>\<c-r>=coc#on_enter()\<CR>"]], {silent = true, noremap = true, expr = true, replace_keycodes = false})

vim.cmd[[
augroup TerminalLineNumbers
  au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
]]

vim.api.nvim_command([[
augroup RunFile
    autocmd filetype python nnoremap <C-e> :w <bar> vsplit <bar> exec 'term python '.shellescape('%')<CR> i
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

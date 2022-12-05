call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'David-Kunz/markid'
call plug#end()

set number
set splitright
nnoremap <C-t> :NERDTreeToggle<CR>
inoremap <silent> <expr> <TAB> pumvisible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

augroup TerminalLineNumbers
  au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

autocmd filetype python nnoremap <C-e> :w <bar> vsplit <bar> exec 'term python '.shellescape('%')<CR> i
autocmd filetype cpp nnoremap <C-e> :w <bar> vsplit <bar> exec 'term g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR> i
autocmd filetype c nnoremap <C-e> :w <bar> vsplit <bar> exec 'term gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR> i

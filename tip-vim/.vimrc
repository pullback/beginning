set nu
set hlsearch

set ts=2
set shiftwidth=2
set expandtab
set autoindent

au BufReadPost *
\ if line("'\'") > 0 && line("'\'") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

"
" Vim Plugins
" 
call plug#begin('~/.vim/plugged')
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-sensible'
Plug 'tomlion/vim-solidity'
call plug#end()

set incsearch
set scrolloff=10

colorscheme jellybeans
let g:jellybeans_overrides = {
\ 'background' : { 'ctermbg': 'none', '256ctermbg': 'none' },
\}
if has('termguicolors') && &termguicolors
  let g:jellybeans_overrides['background']['guibg'] = 'none'
endif

call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
Plug 'stevearc/vim-arduino'
call plug#end()

set nocompatible
filetype plugin indent on
syntax enable
set shortmess+=c
set nobackup
set nowritebackup
set updatetime=200
set number
set signcolumn=no
set background=dark
set number
set smarttab
set shiftwidth=4
set tabstop=4
set cursorline
set noswapfile
set mouse=a
set autoindent
set splitright
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
colorscheme gruvbox
set clipboard+=unnamedplus

nnoremap - $
vnoremap - $
inoremap <C-p> <C-o>$
inoremap <C-s> <C-o>0
inoremap jk <ESC>
noremap Y y$
inoremap (; ()<left>
inoremap (, (<CR>) <C-c>O
inoremap {, {<CR>} <C-c>O
inoremap {; {}<left>
inoremap [, [<CR>] <C-c>O
inoremap [; []<left>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <Enter> o<ESC>
nnoremap <C-o> :bnext<CR>
nnoremap <C-i> :bprev<CR>

set updatetime=300

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

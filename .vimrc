set nohlsearch
set ai
set bg=dark
set showmatch
highlight SpecialKey ctermfg=DarkGray
set listchars=tab:>-,trail:~
set list
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
syntax on
set listchars=tab:>-
set listchars+=trail:.
set ignorecase
set smartcase
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
set laststatus=2
set hidden
nnoremap <CR> :noh<CR><CR>
nnoremap <F5> :bp<CR>
nnoremap <F6> :bn<CR>
nnoremap <F4> :buffers<CR>:buffer<Space>
nnoremap <F7> :bd<CR>
filetype indent on
color evening

set paste
set ruler


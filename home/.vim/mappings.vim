let mapleader = "\<Space>"

" Exit
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

" Buffer control
nmap <leader>T :enew<CR>
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
nmap <leader>bl :ls<CR>

" Move single lines
nmap <C-j> [e
nmap <C-k> ]e

" Move multiple lines selected
vmap <C-j> [egv
vmap <C-k> ]egv

" Linting
nnoremap = :Prettier<CR>

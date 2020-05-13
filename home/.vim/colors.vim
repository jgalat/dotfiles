" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set t_Co=256
set termguicolors

colorscheme pencil

" don't allow colorschemes to set a background color
set background=dark
highlight Normal guibg=black guifg=white

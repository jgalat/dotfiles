let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'leafgarland/typescript-vim', { 'for': 'javascript' }
Plug 'jparise/vim-graphql', { 'for': 'javascript' }
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'scrooloose/nerdtree'
Plug 'reedes/vim-colors-pencil'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

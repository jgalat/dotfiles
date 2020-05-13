set laststatus=2

" left hand side
set statusline=[%{exists('g:loaded_fugitive')?fugitive#head():''}]
set statusline+=\ [%t] " tail
set statusline+=\ %m   " modified
set statusline+=\ %r   " readonly?
set statusline+=\ %h   " help file?
" right hand side
set statusline+=%="
set statusline+=\ %y   " file type
set statusline+=\ %p   " percentage

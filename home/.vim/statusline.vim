set laststatus=2

" left hand side
" branch
set statusline=[%{fugitive#head()}]
" filename
set statusline+=\ [%t]
" modified?
set statusline+=\ %m
" readonly?
set statusline+=\ %r
" help?
set statusline+=\ %h

" right hand side
" right align
set statusline+=%="
" filetype
set statusline+=\ %y
" coc status
set statusline+=\ [%{coc#status()}]

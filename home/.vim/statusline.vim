function! GitInfo()
    let l:longpath = FugitiveGitDir()
    let l:branch = FugitiveHead()
    if empty(l:branch)
      return ''
    endif
    let l:taildir = fnamemodify(l:longpath,':t')
    if l:taildir ==# '.git'
        let l:repo = fnamemodify(l:longpath,':~:h:t')
    else
        " We have just encountered a submodule
        let l:repo = l:taildir
    endif
    return l:repo . ':' . l:branch
endfunction

set laststatus=2

set statusline=
set statusline+=%#Special#
set statusline+=\ %{GitInfo()}
set statusline+=%#LineNr#
set statusline+=\ %f%r
set statusline+=%m
set statusline+=%=
set statusline+=%#Comment#
set statusline+=%{&filetype}
set statusline+=\ \[%{&fileformat}\]
set statusline+=\ %l:%-4c

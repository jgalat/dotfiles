" Lint on save
let g:prettier#exec_cmd_path = '~/.vim/plugged/vim-prettier/node_modules/.bin/prettier'

let g:prettier#autoformat = 0
let g:prettier#autoformat_config_presen = 1

let g:prettier#config#tab_width = 2

"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html PrettierAsync

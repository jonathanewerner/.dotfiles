let g:syntastic_check_on_open = 0
let g:syntastic_csslint_options = "--warnings=none"
" let g:syntastic_eslint_options = "-c  "
" let g:syntastic_html_validator_api='http://validator.nu/'

" autocmd BufNewFile,BufRead *.sbt set filetype=scala.sbt
" autocmd FileType scala.sbt setlocal syntax=scala
let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'passive_filetypes': ['python','html','scala', 'java', 'latex'] }

let g:syntastic_javascript_jsxhint_ignore_errors = [
  \"Illegal"]

" " for angular-html
" let g:syntastic_html_tidy_ignore_errors = [
"     \"proprietary attribute \"ng-",
"     \"trimming empty <i>",
"     \"trimming empty <span>",
"     \"<input> proprietary attribute \"autocomplete\"",
"     \"proprietary attribute \"role\"",
"     \"proprietary attribute \"hidden\"",
"     \"<input> isn't allowed in <body> elements",
"     \"inserting implicit <form>",
"    \"proprietary attribute",
" \]

let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_warning_symbol = '⚠'

let g:syntastic_enable_highlighting=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
" let g:syntastic_stl_format = ''

" let g:syntastic_javascript_checkers = ['eslint', 'flow']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = '/home/jwerner/veloyo/veloyo/node_modules/.bin/eslint_d'


Plugin scrooloose/syntastic

" Lint Vimscript (Syntastic)
Plugin dbakker/vim-lint

let g:syntastic_aggregate_errors = 1

let g:syntastic_check_on_open = 0
let g:syntastic_csslint_options = "--warnings=none"

let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'passive_filetypes': ['python','html','scala', 'java', 'latex', 'less'] }

let g:syntastic_javascript_jsxhint_ignore_errors = [
  \"Illegal"]

let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_error_symbol = '✗'
    let g:syntastic_warning_symbol = '⚠'

let g:syntastic_enable_highlighting=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint_d'
let g:syntastic_javascript_eslint_args = '--quiet -c ~/mesaic/minimal-eslint-config/.eslintrc'
" let g:syntastic_javascript_eslint_args = '--quiet'
" let g:syntastic_javascript_flow_exe = 'flow status'

" --------------------------------------
let g:syntastic_check_on_open = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_enable_highlighting=1

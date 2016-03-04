
autocmd FileType javascript,css,html noremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,html inoremap <silent> ,; <c-o>:call cosco#commaOrSemiColon()<CR>

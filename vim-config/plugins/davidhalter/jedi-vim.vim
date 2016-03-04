let g:jedi#auto_vim_configuration = 0
" let g:jedi#auto_initialization = 0
" call jedi#configure_call_signatures()
let g:jedi#popup_on_dot = 0
au! FileType python setlocal omnifunc=jedi#completions


" settings -------------------------------------------------------------------
au! FileType python set iskeyword -=.
au! FileType html set shiftwidth=2
au! FileType html set tabstop=2
au! FileType tex set ft=plaintex
au! FileType c set commentstring=//\ %s

au! FileType markdown set shiftwidth=4
au! FileType markdown set tabstop=4
au! FileType markdown set softtabstop=4
au! FileType markdown set wrap
au! FileType markdown set linebreak
au! FileType markdown set nolist
au! FileType markdown set textwidth=0
au! FileType markdown set wrapmargin=0
au! FileType markdown set shiftwidth=4
au! FileType markdown set tabstop=4

au! FileType javascript set shiftwidth=2
au! FileType javascript set tabstop=2

" open hooks -----------------------------------------------------------------
  let dir = getcwd()
au! TextChanged  *tex silent w
au! InsertLeave *tex silent w

au! BufWritePost ~/.aliases silent !source %
au! BufWritePost ~/.Xresources silent !xrdb %
au! BufWritePost ~/.vim-config/* source %

autocmd! BufWritePost *.vimrc source %
autocmd! BufWritePost *vimrc source ~/.vim-config/mappings-normal.vim

autocmd! BufRead *.less set ft=less
autocmd! BufRead *.less.module set ft=less

" sudo -----------------------------------------------------------------------
au! BufRead /etc/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
au BufRead /etc/netctl/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
au BufRead /etc/udev/rules.d/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
au BufRead /sys/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>

" vim ------------------------------------------------------------------------
" open/create config file from line
autocmd! BufRead ~/.vim-config/* map <buffer> <cr> 0w"ahiW:CtrlPCurFile<CR>plugins/<C-\>ra.vim<C-y>
autocmd! BufRead ~/.vim/config/* noremap <leader>g :AgFromCurrentFile<space> -
au! BufRead ~/.vim-config/plugins.vim nnoremap <buffer> <F5> :w\|:PlugInstall<cr>
au! BufRead ~/.vim-config/filePlugins.vim nnoremap <buffer> <F5> :w\|:PlugInstall<cr>

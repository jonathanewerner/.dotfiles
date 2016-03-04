au FileType haskell nnoremap <buffer> <silent> <leader>w :GhciTest<cr>
au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F3> :HdevtoolsInfo<CR>

au FileType markdown nnoremap <buffer> <silent> <leader>w :w\|!pandoc -o pdf/%:r.pdf %<CR>

" au! FileType julia nnoremap <buffer> <silent> <leader>s :JuliaExec<cr>
" au FileType julia nnoremap <buffer> <silent> <leader>s :JuliaExecSSH<cr>

au FileType racket nnoremap <silent> <leader>w :RacketExec<cr>

au FileType scala nnoremap <silent> <leader>w :ScalaCompile<cr>

" au FileType python nnoremap <buffer> <silent> <leader>w :PythonExec<cr>
au FileType python nnoremap <buffer> <silent> <leader>w :PythonExec2<cr>

" au FileType c nnoremap <buffer> <silent> <leader>s :CExec<cr>
" autocmd! BufRead ~/.vim/config/* nnoremap K :AgFromCurrentFile <C-R><C-W><CR>


au FileType prolog nnoremap <buffer> <silent> <leader>t :SlimeSendParagraph<cr>

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




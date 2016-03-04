" ALL OF THIS SHOULD BE REFACTORED INTO .LOCAL.VIMRC'S




au! TextChanged *.dart exec "w\<bar>SyntasticCheck"
au! InsertLeave *.dart exec "w\<bar>SyntasticCheck"
" |TextChanged|		after a change was made to the text in Normal mode
" |TextChangedI|		after a change was made to the text in Insert mode

au! BufRead ~/.packages.md nnoremap <buffer> <silent> <F2> :!pacman -Qi <C-r><C-w><cr>
" au! BufWritePost ~/.packages.md exec "!sudo python2 ~/packages"
au! BufRead ~/.packages.md nnoremap <buffer> <F3> :Packer<space>


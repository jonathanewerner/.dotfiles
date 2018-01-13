Plugin tpope/vim-fugitive
Plugin tpope/vim-rhubarb
Plugin tommcdo/vim-fugitive-blame-ext

let g:fugitive_no_maps=1

nnoremap <leader>gg :Gbrowse<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gvdiff<cr>

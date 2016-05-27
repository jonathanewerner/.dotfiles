" Force close vim

nnoremap <silent> <leader>Q :wqall!<cr>
nnoremap <leader>s :w!<CR>

" Search
nnoremap <leader>S :Ags<space>

" Close
noremap <silent> <leader>x :close<cr>

" Move file
noremap <leader>m :Move <C-r>%

" Replace words
nnoremap <leader>u *Nciw
vnoremap <leader>u y/<C-r>"<CR>Ngvc

" Visual split
nnoremap <silent> <leader>y :vs<cr>

" Last buffer
nnoremap <silent> <leader>o :b#<cr>

" Folder shortcuts
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>
nnoremap <silent> <leader>1 :CtrlP ~/veloyo/veloyo/common<cr>
nnoremap <leader>5 :e ~/veloyo/config-development/
nnoremap <leader>n :CtrlP ~/Google\ Drive/txt/tech<cr>

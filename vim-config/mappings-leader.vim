" Note the required backslash.
let mapleader = "\<space>"

nnoremap <silent> <leader>Q :wqall!<cr>
nnoremap <silent> <leader>D :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>r :call CtrlPNormal()<cr>
nnoremap <silent> <leader>R :call CtrlPCurFile()<cr>
nnoremap <silent> <leader>W :call CtrlPCurFileParent()<cr>
nnoremap <leader>s :w!<CR>
nnoremap <leader>S :Ags<space>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gvdiff<cr>

noremap <silent> <leader>x :close<cr>
noremap <leader>m :Move <C-r>%
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>

nnoremap <silent> <leader>1 :CtrlP ~/veloyo/veloyo/common<cr>
nnoremap <leader>5 :e ~/veloyo/config-development/

" Replace words
nnoremap <leader>u *Nciw
vnoremap <leader>u y/<C-r>"<CR>Ngvc

nnoremap <silent> <leader>y :vs<cr>
nnoremap <leader>n :CtrlP ~/Google\ Drive/txt/tech<cr>
nnoremap <silent> <leader>o :b#<cr>

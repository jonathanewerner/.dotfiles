" Force close vim

nnoremap <silent> <leader>Q :wqall!<cr>

function! Save()
	write!
	silent !~/bin/reload-simulator-and-clear-console
endfunction

nnoremap <leader>s :w!<bar><CR>
nnoremap <leader>t :call Save()<cr>



" Search
nnoremap <leader>S :Ags<space>

" Close
noremap <silent> <leader>x :close<cr>

" Edit recorded macro
" nnoremap <leader>M  :<c-u><c-r><c-r>='let @q = '. string(getreg("q"))<cr><c-f><left>

" Move file
noremap <leader>m :Move <C-r>%

" Replace words
nnoremap <leader>u *Nciw
xnoremap <leader>u y/<C-r>"<CR>Ngvc

" Visual split
nnoremap <silent> <leader>y :vs<cr>

" Last buffer
nnoremap <silent> <leader>o :b#<cr>

" Folder shortcuts
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>
nnoremap <silent> <leader>1 :CtrlP ~/veloyo/veloyo/common<cr>
nnoremap <leader>5 :e ~/veloyo/config-development/
nnoremap <leader>n :CtrlP ~/Google\ Drive/txt/tech<cr>

function! Macro()
	iunmap <esc>
	normal! qq
	inoremap <esc> <esc><right>
endfunction

nnoremap <silent> <leader>M :call Macro()<cr>

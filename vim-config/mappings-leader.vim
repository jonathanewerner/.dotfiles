" Force close vim

nnoremap <silent> <leader>Q :wqall!<cr>

function! Save()
	write!
	silent !~/bin/reload-simulator-and-clear-console
endfunction

nnoremap <leader>s :w!<bar><CR>
nnoremap s :w!<bar><CR>


function! Autoformat()
  if filereadable("./node_modules/.bin/mesaic-codeformat")
		write!
		silent !./node_modules/.bin/mesaic-codeformat %
  else
		write!
		silent !./node_modules/.bin/prettier --single-quote --jsx-bracket-same-line --write --no-semi %
	endif
endfunction
" nnoremap <silent> <leader>f :call Autoformat()<cr>
nnoremap <silent> <leader>f :silent !~/bin/codeformat %<cr>
nnoremap <silent> S :update!<bar>silent
" nnoremap <silent> <leader>F

" Search
nnoremap <leader>S :Ags<space>
xnoremap <leader>S "vy \| :exec ":Ags " . @v <CR>
nnoremap S :Ags<space>
" nnoremap <leader>t :SyntasticToggle<cr>
" nnoremap <leader>t :e ~/TODO.md<cr>
nnoremap <leader>t :silent !open btt://147799BC-2F2E-4635-BEAD-C251414AE3AB<cr>

" Close
noremap <silent> <leader>x :close<cr>

" Edit recorded macro
" nnoremap <leader>M  :<c-u><c-r><c-r>='let @q = '. string(getreg("q"))<cr><c-f><left>

" Move file
noremap <leader>m :Rename<space>
" Replace words
nnoremap <leader>u *Nciw
xnoremap <leader>u y/<C-r>"<CR>Ngvc

nnoremap <leader>U :UltiSnipsEdit<cr>

" Visual split
nnoremap <silent> <leader>y :vs<cr>

" Last buffer
nnoremap <silent> <leader>o :b#<cr>

" Folder shortcuts
nnoremap <silent> <leader>C :e ~/COLORS.js<cr>
nnoremap <leader>5 :e ~/veloyo/config-development/

function! Macro()
	iunmap <esc>
	normal! qq
	inoremap <esc> <esc><right>
endfunction

nnoremap <silent> <leader>M :call Macro()<cr>
nnoremap <leadery :let @+ = expand("%")<CR>

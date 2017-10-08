set guioptions-=M
set guioptions-=e  "console tabs"
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" set guifont=Meslo\ LG\ S\ DZ\ 10
" set guifont=Menlo\ Regular:h14

" change this interactively: "set guifont=*", then "set guifont?"
" set guifont=InputMono:h16
set guifont=Fira\ Code:h17
" set macligatures
" set linespace=6
set linespace=6
" set guioptions-=e
" colorscheme grb256
" set guifont=Inconsolata-dz:h14
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
set guiheadroom=0

	macmenu File.Print key=<nop>
	macmenu File.Open\.\.\. key=<nop>
	macmenu File.New\ Window key=<nop>
	macmenu File.Close key=<nop>
	macmenu File.Save key=<nop>
	macmenu Edit.Select\ All key=<nop>
	macmenu Edit.Paste key=<nop>

	function! s:home()
		normal! 0
	endfunction
	nnoremap <D-n> <C-n>
	nnoremap <D-p> <C-p>
	nnoremap <D-r> <C-r>
	nnoremap <D-u> <C-u>
	nnoremap <D-p> <C-p>
	nnoremap <D-d> <C-d>
	nnoremap <D-o> <C-o>
	nnoremap <D-v> <C-v>
	nnoremap <D-r> <C-r>

	inoremap <D-w> <C-w>
	inoremap <D-a> <C-o>:normal! 0<cr>
	inoremap <D-n> <C-n>
	inoremap <D-e> <C-e>
	inoremap <D-p> <C-p>

	cnoremap <D-w> <C-w>
	cnoremap <D-a> <Home>
	cnoremap <D-e> <End>
	cnoremap <D-r> <C-r>
	cnoremap <D-p> <C-p>
	cnoremap <D-n> <C-n>

let $PATH="node_modules/.bin:" . $PATH

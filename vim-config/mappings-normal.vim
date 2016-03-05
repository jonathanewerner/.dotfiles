"
" Normal keys -----------------------------------------------------------------------------------------------
"
inoremap <esc> <esc>l

nnoremap Q q
nnoremap l o
nnoremap o l

vnoremap l o
vnoremap o l

nnoremap L O
nnoremap O L

vnoremap L O
vnoremap O L

nnoremap , n
nnoremap ; N
nnoremap n gj

vnoremap j n
vnoremap n gj

nnoremap k e
noremap e gk

vnoremap k e
vnoremap e gk

nnoremap K E
nnoremap E 10k

nnoremap h y
onoremap h y
vnoremap h y
nnoremap H y$

nnoremap y h
vnoremap y h

" deactivate Q / ex mode
nnoremap Q <nop>
nnoremap Q <nop>

" change behaviour of goto first column
nnoremap 0 ^

" make yanking behave live c and d
nnoremap H y$
" easier searching
nnoremap ? ?\V
vnoremap ? ?\V
nnoremap / /\V
vnoremap / /\V

" move between splits
nnoremap <silent> <Tab> :wincmd w<cr>

nnoremap <bs> zm

" Quickly select text you just pasted:
noremap gV `[v`]

" insert mode easy paste

" select pasted
nnoremap <expr> `` '`[' . strpart(getregtype(), 0, 1) . '`]'

nnoremap <silent> <cr> :lnext<cr>

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

"
" Function keys -----------------------------------------------------------------------------------------------
"
nnoremap <F2> :UltiSnipsEdit<cr>
nnoremap <F3> :e ~/.cache/ctrlp/mru/cache.txt<cr>
nnoremap <F5> :source %<cr>
noremap <F6> :Invbg<CR>

Source modules/fill-line
nnoremap <F12> :silent call FillLine( '-' )<cr>

"
" Ctrl/Alt keys --------------------------------------------------------------------------------------------
"
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

vnoremap <C-v> "+p
vnoremap <C-c> "+y
inoremap <C-v> <c-o>:set paste<cr><C-R>+<c-o>:set nopaste<cr>


" We want these for tab navigation when using help files
nnoremap <silent> <M-1> 1gt
nnoremap <silent> <M-2> 2gt
nnoremap <silent> <M-3> 3gt
nnoremap <silent> <M-4> 4gt
nnoremap <silent> <M-5> 5gt

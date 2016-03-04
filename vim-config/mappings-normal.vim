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

" nnoremap ` gt

"move betw splits
" map <Tab> :wincmd w\|:vert res 84<cr>
nnoremap <silent> <Tab> :wincmd w<cr>

nnoremap <bs> zm

" Quickly select text you just pasted:
noremap gV `[v`]

" insert mode easy paste
vnoremap p "0p

"
" Function keys ----------------------------------------------------------
"
nnoremap <F2> :UltiSnipsEdit<cr>
nnoremap <F3> :e ~/.cache/ctrlp/mru/cache.txt<cr>

nnoremap <F5> :source %<cr>
noremap <F6> :Invbg<CR>

" syntax highlighting debugging
map <F11> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" inoremap ;d <C-w>

nnoremap <F12> :silent call FillLine( '-' )<cr>

" select pasted
nnoremap <expr> `` '`[' . strpart(getregtype(), 0, 1) . '`]'

nnoremap <silent> <cr> :lnext<cr>

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>


"
" Control/Alt ----------------------------------------------------------
"
nnoremap <M-u> :BufSurfBack<cr>
nnoremap <M-p> :BufSurfForward<cr>

nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

vnoremap <C-v> "+p
vnoremap <C-c> "+y
inoremap <C-v> <c-o>:set paste<cr><C-R>+<c-o>:set nopaste<cr>

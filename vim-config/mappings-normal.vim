"
" Normal keys -----------------------------------------------------------------------------------------------
"
inoremap <esc> <esc>l

nnoremap <silent> } :ALENextWrap<cr>
nnoremap <silent> { :ALEPreviousWrap<cr>
nnoremap Q q
nnoremap l o
nnoremap o l

xnoremap l o
xnoremap o l

nnoremap L O
nnoremap O L

xnoremap L O
xnoremap O L

nnoremap , n
nnoremap ; N
nnoremap n gj

xnoremap j n
xnoremap n gj

nnoremap k e
noremap e gk

xnoremap k e
xnoremap e gk

nnoremap K E
nnoremap E 10k

nnoremap h y
onoremap h y
xnoremap h y
nnoremap H y$

nnoremap y h
xnoremap y h

" deactivate Q / ex mode
nnoremap Q <nop>
nnoremap Q <nop>

" change behaviour of goto first column
nnoremap 0 ^

" make yanking behave live c and d
nnoremap H y$

" easier searching

" Default to normal characters (no regexes
" nnoremap ? ?\V
" vnoremap ? ?\V
" nnoremap / /\V
" vnoremap / /\V

" Default to perl regexes
nnoremap ? ?\v
xnoremap ? ?\v
nnoremap / /\v
xnoremap / /\v

" move between splits
nnoremap <silent> <Tab> :wincmd w<cr>

nnoremap <bs> zm

" Quickly select text you just pasted:
noremap gV `[v`]

" insert mode easy paste

" select pasted
nnoremap <expr> `` '`[' . strpart(getregtype(), 0, 1) . '`]'

" nnoremap <silent> <cr> :lnext<cr>

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

"
" Function keys -----------------------------------------------------------------------------------------------
"
nnoremap <F3> :e ~/.cache/ctrlp/mru/cache.txt<cr>
nnoremap <F5> :source %<cr>

function! ReverseBackground()
 let Mysyn=&syntax
 if &bg=="light"
 se bg=dark
 else
 se bg=light
 endif
 syn on
 exe "set syntax=" . Mysyn
endfunction
command! Invbg call ReverseBackground()
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

" Sorting rules
vnoremap <F9> :sort <CR>
" <S-F9>: by '/" enclosed string
vnoremap <S-F9> :sort '[\'"].*[\'"]' r<CR>
nnoremap <S-F9> vip :sort '[\'"].*[\'"]' r<CR>

" nnoremap <silent> :: :call ctrlp#init(ctrlp#commandline#id())<cr>

" always regex very magic
" nnoremap / /\v
" xnoremap / /\v
" cnoremap %s/ %smagic/
" cnoremap \>s/ \>smagic/
" nnoremap :g/ :g/\v
" nnoremap <right> :bn<cr>
" nnoremap <left> :bp<cr>

" sum of numbers in selection
xnoremap gs !awk '{print; total+=$2}END{print total}'<cr>

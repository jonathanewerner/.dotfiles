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
" NORMAL --------------------------------- {{{1
nnoremap <silent> <F4> :SyntasticToggleMode<CR>

" nnoremap ` gt

"move betw splits
" map <Tab> :wincmd w\|:vert res 84<cr>
nnoremap <silent> <Tab> :wincmd w<cr>

nnoremap <bs> zm

" Quickly select text you just pasted:
noremap gV `[v`]

" bind K to grep word under cursor
nnoremap <silent> K :silent AgMy<cr>
vnoremap <silent> K :<C-u>silent AgMyVisual<cr>

" nnoremap <silent> <F1> :e .local.vimrc<cr>
nnoremap <silent> <F1> :CtrlPBookmarkDir<cr>
nnoremap <F2> :UltiSnipsEdit<cr>
nnoremap <F3> :e ~/.cache/ctrlp/mru/cache.txt<cr>

nnoremap <F4> :RainbowParenthesesToggleAll<cr>
nnoremap <F8> :TagbarToggle<cr>
nnoremap <F5> :source %<cr>
noremap <F6> :Invbg<CR>
nnoremap <F7> :set guifont=Liberation\ Mono\ for\ Powerline\ 16<cr>
nnoremap <F12> :silent call FillLine( '-' )<cr>

" show syntax highlighting under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <silent> god :e ~/dev<cr>
" c:nnoremap <silent> gop :Tmux


" select pasted
nnoremap <expr> `` '`[' . strpart(getregtype(), 0, 1) . '`]'

function! SaveQuickF(num)
  silent exec "!sed -i '/F " . a:num . "/d' .local.vimrc"
  silent exec "!echo F " . a:num . " ". expand("%:p") . " >> .local.vimrc"
  silent source .local.vimrc
endfunction

function! SaveQuickFChar(c)
  silent exec "!sed -i '/Fc " . a:c . "/d' .local.vimrc"
  silent exec "!echo Fc " . a:c . " " . expand("%:p") . " >> .local.vimrc"
  silent source .local.vimrc
endfunction

function! SaveQuickCmd(...)
  let cmd = join(a:000)
  silent exec "!sed -i '/QuickCmd/d' .local.vimrc"
  silent exec "!echo QuickCmd " . cmd . " >> .local.vimrc"
  silent source .local.vimrc
  silent call SendQuickCmd()
  echo ''
endfunction
command! -nargs=* -complete=shellcmd Quick call SaveQuickCmd(<f-args>)

" nnoremap <silent> <leader>1 :call SaveQuickF(1)<cr>
" nnoremap <silent> <leader>2 :call SaveQuickF(2)<cr>
" nnoremap <silent> <leader>3 :call SaveQuickF(3)<cr>
" nnoremap <silent> <leader>4 :call SaveQuickF(4)<cr>
" nnoremap <silent> <leader>5 :call SaveQuickF(5)<cr>
" nnoremap <silent> <leader>6 :call SaveQuickF(6)<cr>
" nnoremap <silent> <leader>7 :call SaveQuickF(7)<cr>
" nnoremap <silent> <leader>8 :call SaveQuickF(8)<cr>

nnoremap <silent> <cr> :lnext<cr>

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>


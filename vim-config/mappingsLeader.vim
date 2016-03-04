set nocompatible | filetype indent plugin on | syn on

" a little more informative version of the above
nmap <Leader>I :call <SID>SynStack()<CR>

function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" nnoremap <silent> <leader>q :wqall!<cr>
nnoremap <silent> <leader>Q :wqall!<cr>
nnoremap <silent> <leader>D :call CtrlPMRUAbsolute()<cr>
" nnoremap <silent> <leader>d :CtrlPBuffer<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
" nnoremap <silent> <leader>d :LustyJuggler<cr>
nnoremap <silent> <leader>r :call CtrlPNormal()<cr>
nnoremap <silent> <leader>R :call CtrlPCurFile()<cr>
nnoremap <silent> <leader>W :call CtrlPCurFileParent()<cr>
" nnoremap <silent> <leader>w :call ToggleStyleFyle()<cr>
" nnoremap <silent> <leader>t :lwindow<cr>
" nnoremap <leader>t :e %:p:h
nnoremap <leader>t :e <C-r>=expand('%:p:h')<cr>/
" nnoremap <silent> <leader>t :next<cr>
" nnoremap <silent> <leader>T :CtrlPBookmarkDirAdd<cr>
nnoremap <silent> <leader>g :ldo :normal A,<cr>:w<cr>
" nnoremap <leader>a :r! css-to-radium --input %<cr>
function! Foo()
  w
  source %
  call Reddit()
endfunction
" nnoremap <leader>s :call Foo()<cr>
  nnoremap <leader>s :w!<CR>

nnoremap <leader>S :Ags<space>

nnoremap <leader>hs :GitGutterStageHunk<cr>
nnoremap <leader>hrr :GitGutterRevertHunk<cr>
nnoremap <leader>hp :GitGutterPreviewHunk<cr>
nnoremap <leader>` <C-w>z

" nnoremap <leader>tr :TernRename<cr>
" nnoremap <leader>t :silent !tmux send-keys C-p C-m<cr>
" nnoremap <leader>t :silent call SendQuickCmd()<cr>

" nnoremap <leader>T :nnoremap <Char-0x3c>leader>t :silent !tmux send-keys C-u<space>
" nnoremap <leader>T :Quick<space>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gd :Gvdiff<cr>

noremap <silent> <leader>x :close<cr>
" noremap <silent> <leader>x :Bclose<cr>
noremap <leader>m :Move <C-r>%
nnoremap <silent> <leader>c :CtrlP ~/.dotfiles<cr>

nnoremap <silent> <leader>1 :CtrlP ~/veloyo/veloyo/common<cr>
" nnoremap <silent> <leader>2 :CtrlP ~/veloyo/veloyo/docs<cr>
nnoremap <silent> <leader>2 :CtrlP ~/veloyo/veloyo/e2e<cr>
nnoremap <silent> <leader>3 :CtrlP ~/veloyo/veloyo/service<cr>
nnoremap <silent> <leader>4 :CtrlP ~/veloyo/veloyo/api<cr>
nnoremap <silent> <leader>6 :CtrlP ~/veloyo/veloyo/admin<cr>
nnoremap <silent> <leader>7 :CtrlP ~/veloyo/veloyo/website<cr>
nnoremap <leader>5 :e ~/veloyo/config-development/

function! MultiCommit()
  silent !tmux send-keys C-u multi-commit C-m
  silent !/home/jwerner/.dotfiles/bin/runtermvim
endfunction

function! JavascriptFunctionOperator()
  silent ?\v\n\s*\w+\(.*\)\s\{
  normal n$V%
endfunction
vnoremap af :call JavascriptFunctionOperator()<cr>
omap af :normal vaf<CR>

" nnoremap <silent> <leader>C :call MultiCommit()<cr>
nnoremap <leader>C :Ags current test<cr>

nnoremap <leader>u *Nciw
vnoremap <leader>u y/<C-r>"<CR>Ngvc


vnoremap <leader>J vit:s/ \%(\w+=)/a/<cr>

fun! MyOver()
  exec "OverCommandLine %s/" . expand("<cword>") . "/"
  rmal ":e"
  rmal ":e " . expand('%p:h')
endfun

nnoremap <leader>U :call MyOver()<cr>
" nnoremap <leader>u :HoppingStart <cr><C-r><C-w>/

nnoremap <silent> <leader>y :vs<cr>
nnoremap <leader>n :CtrlP ~/Google\ Drive/txt/tech<cr>
" nnoremap <silent> <leader>E :call RestartMX()<cr>
nnoremap <silent> <leader>o :b#<cr>
let g:lasttab = 1
nnoremap <silent> <leader>p :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()
" nnoremap <silent> <leader>o :b#<cr>

  " reindent whole file
nnoremap <silent> <leader>> mmgg=G`m



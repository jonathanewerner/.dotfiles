" g?    show this help
" <C-N> next file
" <C-P> previous file
" <CR>  |:Gedit|
" -     |:Git| add
" -     |:Git| reset (staged files)
" cA    |:Gcommit| --amend --reuse-message=HEAD
" ca    |:Gcommit| --amend
" cc    |:Gcommit|
" cva   |:Gcommit| --amend --verbose
" cvc   |:Gcommit| --verbose
" D     |:Gdiff|
" ds    |:Gsdiff|
" dp    |:Git!| diff (p for patch; use :Gw to apply)
" dp    |:Git| add --intent-to-add (untracked files)
" dv    |:Gvdiff|
" O     |:Gtabedit|
" o     |:Gsplit|
" p     |:Git| add --patch
" p     |:Git| reset --patch (staged files)
" q     close status
" R     reload status
" S     |:Gvsplit|
" Squash commits
function! SquashCommits()
  '<,'>s/pick /fixup /ge
endfunction
autocmd! VimEnter .git/rebase-merge/git-rebase-todo vmap <buffer> <leader>s :call SquashCommits()<CR>
nnoremap <silent> }q :cn<cr>
nnoremap <silent> {q :cp<cr>

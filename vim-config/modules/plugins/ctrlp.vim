"
" Plugins
"
Plugin ctrlpvim/ctrlp.vim
" We need both matchers because cpsm's MRU behaviour is wacky
Plugin nixprime/cpsm
Plugin JazzCore/ctrlp-cmatcher

Plugin suy/vim-ctrlp-commandline
let g:ctrlp_extensions = ['commandline']


"
" Settings
"
let g:ctrlp_prompt_mappings = {
\ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
\ 'PrtSelectMove("k")':   ['<c-e>', '<up>'],
\ 'PrtHistory(-1)':       [''],
\ 'PrtCurEnd()':          [''],
\ 'ToggleRegex()':        [''],
\ 'ToggleMRURelative()':  ['<F2>']
\ }


set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
" " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_use_caching = 1
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15'
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
let g:ctrlp_mruf_max=100
let g:ctrlp_tilde_homedir=1

"
" Functions
"
function! CtrlPMRURelative()
  do BufLeave
  let g:ctrlp_mruf_relative = 1
  let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
  CtrlPMRUFiles
endfunction

function! CtrlPMRUAbsolute()
  do BufLeave
  let g:ctrlp_mruf_relative = 0
  let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
  CtrlPMRUFiles
endfunction

function! CtrlPNormal()
  do BufLeave
  let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
  CtrlP
endfunction

function! CtrlPCurFile()
  do BufLeave
  let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
  CtrlPCurFile
endfunction

function! CtrlPCurFileParent()
  do BufLeave
  echo 'bar'
  let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
  exec "CtrlP " . expand('%:p:h') . "/.."
endfunction

"
" Mappings
"
nnoremap <silent> <leader>D :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>r :call CtrlPNormal()<cr>
nnoremap <silent> <leader>R :call CtrlPCurFile()<cr>
nnoremap <silent> <leader>W :call CtrlPCurFileParent()<cr>

"
" Plugins
"
Plugin ctrlpvim/ctrlp.vim
" Plugin kien/ctrlp.vim
" We need both matchers because cpsm's MRU behaviour is wacky
Plugin nixprime/cpsm
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

" Plugin suy/vim-ctrlp-commandline
" let g:ctrlp_extensions = ['commandline']

"
" Settings
"
let g:ctrlp_prompt_mappings = {
\ 'PrtSelectMove("j")':   ['<D-n>', '<down>'],
\ 'PrtSelectMove("k")':   ['<D-e>', '<up>'],
\ 'CreateNewFile()':      ['<D-y>'],
\ 'PrtCurEnd()':          [''],
\ 'ToggleRegex()':        [''],
\ 'ToggleMRURelative()':  ['<F2>']
\ }


set grepprg=rg\ --files\ --color=never\ --glob ""
" set grepprg=ag\ --nogroup\ --nocolor\ --smart-case\ --depth\ 10
" let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor --depth 10 -g ""'
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_open_new_file = 'r'
" let g:ctrlp_use_caching = 1
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:15'
let g:ctrlp_mruf_max=100
let g:ctrlp_tilde_homedir=1
let g:ctrlp_lazy_update = 30
let g:ctrlp_line_prefix = ''

"
" Functions
"
function! CtrlPMRURelative()
  " do BufLeave
  let g:ctrlp_mruf_relative = 1
	let g:cpsm_match_empty_query = 0
  " let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
  CtrlPMRUFiles
endfunction

function! CtrlPMRUAbsolute()
  " do BufLeave
  let g:ctrlp_mruf_relative = 0
	let g:cpsm_match_empty_query = 0
  CtrlPMRUFiles
endfunction

function! CtrlPNormal()
  " do BufLeave
	let g:cpsm_match_empty_query = 1
  CtrlP
endfunction

function! CtrlPCurFile()
  " do BufLeave
	let g:cpsm_match_empty_query = 1
  CtrlPCurFile
endfunction

function! CtrlPCurFileParent()
  " do BufLeave
	let g:cpsm_match_empty_query = 1
  exec "CtrlP " . expand('%:p:h') . "/.."
endfunction

command! CC CtrlPClearAllCaches

" Mappings
nnoremap <silent> <leader>D :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>d :call CtrlPMRUAbsolute()<cr>
nnoremap <silent> <leader>r :call CtrlPNormal()<cr>
nnoremap <silent> <leader>R :call CtrlPCurFile()<cr>
nnoremap <silent> R :call CtrlPCurFile()<cr>
nnoremap <silent> <leader>W :call CtrlPCurFileParent()<cr>

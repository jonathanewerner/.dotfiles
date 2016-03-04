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

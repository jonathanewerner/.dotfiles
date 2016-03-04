let g:ctrlp_by_filename = 0
let g:ctrlp_map = ''
let g:ctrlp_prompt_mappings = {
\ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
\ 'PrtSelectMove("k")':   ['<c-e>', '<up>'],
\ 'PrtHistory(-1)':       [''],
\ 'PrtCurEnd()':          [''],
\ 'ToggleRegex()':        [''],
\ 'ToggleMRURelative()':  ['<F2>']
\ }
  " let g:ctrlp_prompt_mappings = {
  "   \ 'PrtBS()':              ['<bs>', '<c-]>'],
  "   \ 'PrtDelete()':          ['<del>'],
  "   \ 'PrtDeleteWord()':      ['<c-w>'],
  "   \ 'PrtClear()':           ['<c-u>'],
  "   \ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
  "   \ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
  "   \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
  "   \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
  "   \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
  "   \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
  "   \ 'PrtHistory(-1)':       ['<c-n>'],
  "   \ 'PrtHistory(1)':        ['<c-p>'],
  "   \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
  "   \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
  "   \ 'AcceptSelection("t")': ['<c-t>'],
  "   \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
  "   \ 'ToggleFocus()':        ['<s-tab>'],
  "   \ 'ToggleRegex()':        ['<c-r>'],
  "   \ 'ToggleByFname()':      ['<c-d>'],
  "   \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
  "   \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
  "   \ 'PrtExpandDir()':       ['<tab>'],
  "   \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
  "   \ 'PrtInsert()':          ['<c-\>'],
  "   \ 'PrtCurStart()':        ['<c-a>'],
  "   \ 'PrtCurEnd()':          ['<c-e>'],
  "   \ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
  "   \ 'PrtCurRight()':        ['<c-l>', '<right>'],
  "   \ 'PrtClearCache()':      ['<F5>'],
    \ 'PrtDeleteEnt()':       ['<F7>'],
  "   \ 'CreateNewFile()':      ['<c-y>'],
  "   \ 'MarkToOpen()':         ['<c-z>'],
  "   \ 'OpenMulti()':          ['<c-o>'],
  "   \ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
  "   \ }
<
set grepprg=ag\ --nogroup\ --nocolor\ --smart-case
" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_open_new_file = 'r'
"never jump to existing buffer


                                                      " *'g:ctrlp_switch_buffer'*
" When opening a file, if it's already open in a window somewhere, CtrlP will try
" to jump to it instead of opening a new instance: >
  " let g:ctrlp_switch_buffer = 'Et'
" <
  " e - jump when <cr> is pressed, but only to windows in the current tab.
  " t - jump when <c-t> is pressed, but only to windows in another tab.
  " v - like "e", but jump when <c-v> is pressed.
  " h - like "e", but jump when <c-x> is pressed.
  " E, T, V, H - like "e", "t", "v", and "h", but jump to windows anywhere.
  " 0 or <empty> - disable this feature.
    let g:ctrlp_switch_buffer = ''

" ag is fast enough that CtrlP doesn't need to cache
let g:ctrlp_use_caching = 0

" MRU mode options:~ ---------------------------------------------------------

"                                                            *'g:ctrlp_mruf_max'*
" Specify the number of recently opened files you want CtrlP to remember: >
"   let g:ctrlp_mruf_max = 250
" <

"                                                        *'g:ctrlp_mruf_exclude'*
" Files you don't want CtrlP to remember. Use regexp to specify the patterns: >
"   let g:ctrlp_mruf_exclude = ''
" <
" Examples: >
"   let g:ctrlp_mruf_exclude = '/tmp/.*\|/temp/.*' " MacOSX/Linux
"   let g:ctrlp_mruf_exclude = '^C:\\dev\\tmp\\.*' " Windows
" <

"                                                        *'g:ctrlp_mruf_include'*
" And if you want CtrlP to only remember some files, specify them here: >
"   let g:ctrlp_mruf_include = ''
" <
" Example: >
"   let g:ctrlp_mruf_include = '\.py$\|\.rb$'
" <

"                                                       *'g:ctrlp_mruf_relative'*
" Set this to 1 to show only MRU files in the current working directory: >
  " let g:ctrlp_mruf_relative = 1
" <
" Note: you can use a custom mapping to toggle this option inside the prompt: >
" <

"                                                  *'g:ctrlp_mruf_default_order'*
" Set this to 1 to disable sorting when searching in MRU mode: >
" let g:ctrlp_mruf_default_order = 1
" <

"                                                 *'g:ctrlp_mruf_case_sensitive'*
" Match this with your file system case-sensitivity setting to avoid duplicate
" MRU entries: >
"   let g:ctrlp_mruf_case_sensitive = 1
" <

"                                                 *'g:ctrlp_mruf_save_on_update'*
" Set this to 0 to disable saving of the MRU list to hard drive whenever a new
" entry is added, saving will then only occur when exiting Vim: >
  let g:ctrlp_mruf_save_on_update = 1
" <

" The position: (default: bottom)
"   top - show the match window at the top of the screen.
"   bottom - show the match window at the bottom of the screen.

" The listing order of results: (default: btt)
"   order:ttb - from top to bottom.
"   order:btt - from bottom to top.

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30'

let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }

let g:ctrlp_abbrev = {
  \ 'gmode': 't',
  \ 'abbrevs': [
    \ {
\ 'pattern': '^c p',
    \ 'expanded': '@cd ~/.vim/vim-addons',
      \ 'mode': 'pfrz',
    \ },
  \ {
      \ 'pattern': '\(^@.\+\|\\\@<!:.\+\)\@<! ',
      \ 'expanded': '.\{-}',
      \ 'mode': 'pfr',
    \ },
    \ {
      \ 'pattern': '\\\@<!:.\+\zs\\\@<! ',
      \ 'expanded': '\ ',
      \ 'mode': 'pfz',
    \ },
    \ ]
  \ }
let g:ctrlp_mruf_max=50

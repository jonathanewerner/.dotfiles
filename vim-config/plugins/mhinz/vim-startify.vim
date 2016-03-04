let g:ctrlp_reuse_window = 'startify'
let g:startify_files_number        = 8
let g:startify_session_persistence = 1
let g:startify_session_autoload    = 1
let g:startify_session_detection   = 0
let g:startify_enable_special      = 0
let g:ctrlp_reuse_window = 'startify'

" let g:startify_list_order = [
"       \ ['   LRU:'],
"       \ 'files',
"       \ ['   Sessions:'],
"       \ 'sessions',
"       \ ['   Bookmarks:'],
"       \ 'bookmarks',
"       \ ]
let g:startify_list_order = [
            \ 'sessions',
            \ ]


let g:startify_skiplist = [
            \ 'COMMIT_EDITMSG',
            \ $VIMRUNTIME .'/doc',
            \ 'bundle/.*/doc',
            \ ]

let g:startify_bookmarks = [
            \ '~/.vim/vimrc',
            \ '/data/vim/golfing',
            \ ]

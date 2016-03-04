let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_source_file_mru_time_format=""

" let g:unite_winheight = 10

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" let g:unite_source_file_rec_max_cache_files = 100000000
" let g:unite_source_rec_async_command = 'ag -i --nocolor --nogroup --ignore ''.git'' --ignore ''.bzr'' --ignore ''node_modules'' --hidden -g ""'
" call unite#custom#source('file_mru,file_rec,file_rec/async,grepocate',
        " \ 'max_candidates', 0)

" Use ag for search
" if executable('ag')
" let g:unite_source_grep_command = 'ag'
" let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
" let g:unite_source_grep_recursive_opt = ''
" endif

autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
    let b:SuperTabDisabled=1
    imap <buffer> <C-n>   <Plug>(unite_select_next_line)
    imap <buffer> <C-e>   <Plug>(unite_select_previous_line)
    imap <silent><buffer><expr> <C-x> unite#do_action('split')
    imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
    imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

    imap <buffer> <ESC> <Plug>(unite_exit)
    nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction


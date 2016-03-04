function! Source(arg)
    let l:f=expand($VIM_CONFIG_DIR . "/" . a:arg . ".vim")
     silent exec "source " . l:f
endfunction
command! -nargs=1 Source call Source(<f-args>)

" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  " set statusline=%{getcwd()}/          " current dir
  set statusline+=%<%f\    " Filename
  " set statusline+=%w%h%m%r " Options
  set statusline+=%#error#
  set statusline+=%*
  " set statusline+=%{SyntasticStatuslineFlag()}
  " set statusline+=%{ALEGetStatusLine()}

  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif


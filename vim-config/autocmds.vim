
" ft specific -------------------------------------------------------------------

augroup custom.python
  autocmd!
  au FileType python set iskeyword -=.
  au FileType python set tabstop=8
  au FileType python set expandtab
  au FileType python set shiftwidth=4
  au FileType python set softtabstop=4
augroup END

augroup custom.html
  autocmd!
  au FileType html syntax off
  au FileType html set shiftwidth=2
  au FileType html set tabstop=2
augroup END

augroup custom.tex
  autocmd!
  au FileType tex set ft=plaintex
  au TextChanged  *tex silent w
  au InsertLeave *tex silent w
augroup END

augroup custom.c
  autocmd!
  au FileType c set commentstring=//\ %s
augroup END

augroup custom.md
  autocmd!
  au FileType markdown set shiftwidth=4
  au FileType markdown set tabstop=4
  au FileType markdown set softtabstop=4
  au FileType markdown set wrap
  au FileType markdown set linebreak
  au FileType markdown set nolist
  au FileType markdown set textwidth=0
  au FileType markdown set wrapmargin=0
  au FileType markdown set shiftwidth=4
  au FileType markdown set tabstop=4
augroup END

augroup custom.js
  autocmd!
  au FileType javascript set shiftwidth=2
  au FileType javascript set tabstop=2
	" autocmd FileType javascript set formatprg=prettier-eslint\ --stdin\ --eslintPath\ /Users/jwerner/wish/prettier-eslint-setup/node_modules/eslint\ --prettierPath\ /Users/jwerner/wish/prettier-eslint-setup/node_modules/prettier
	" autocmd BufWritePre *.js exe "normal! gggqG\<C-o>\<C-o>"
augroup END

augroup custom.less
  autocmd!
  au BufRead *.less set ft=less
  au BufRead *.less.module set ft=less
  au BufRead *.less.global set ft=less
augroup END

augroup custom.fastlane
  autocmd!
  au BufRead Fastfile set ft=ruby
augroup END

" source dotfiles -----------------------------------------------------------------

augroup custom.sourcing
  autocmd!
  au BufWritePost $DOTFILES_DIR/.aliases silent !source %
  au BufWritePost $VIM_CONFIG_DIR/* source %
  au BufWritePost $DOTFILES_DIR/vimrc source %
augroup END

" sudo -----------------------------------------------------------------------
augroup custom.sudo
  autocmd!
  au BufRead /etc/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
  au BufRead /etc/netctl/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
  au BufRead /etc/udev/rules.d/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
  au BufRead /sys/* nnoremap <buffer> <leader>s :w !sudo tee > /dev/null %<CR>
augroup END

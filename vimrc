set nocompatible | filetype indent plugin on | syn on

let $VIM_CONFIG_DIR="/Users/jwerner/.dotfiles/vim-config"
let $DOTFILES_DIR="/Users/jwerner/.dotfiles"
source $VIM_CONFIG_DIR/modules/helpers/Source.vim

let mapleader = "\<space>"

Source plugins
Source settings
Source autocmds
Source functions
Source mappings-normal
Source mappings-leader

" Do stuff for every item in quickfix list
Source modules/qfdo

Source modules/restore-screen-setup

" set verbose command
" >= 1  When the viminfo file is read or written.
" >= 2  When a file is ":source"'ed.
" >= 5  Every searched tags file and include file.
" >= 8  Files for which a group of autocommands is executed.
" >= 9  Every executed autocommand.
" >= 12 Every executed function.
" >= 13 When an exception is thrown, caught, finished, or discarded.
" >= 14 Anything pending in a ":finally" clause.
" >= 15 Every executed Ex command (truncated at 200 characters).

" set verbose=12
" set verbosefile=/home/jwerner/vim-debug-log.txt

" let g:loaded_matchparen=1

" NEOVIM
let g:python_host_prog = '/usr/local/bin/python'

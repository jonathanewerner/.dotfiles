set nocompatible | filetype indent plugin on | syn on

let $VIM_CONFIG_DIR="/home/jwerner/.dotfiles/vim-config"
let $DOTFILES_DIR="/home/jwerner/.dotfiles"
source $VIM_CONFIG_DIR/modules/helpers/Source.vim

let mapleader = "\<space>"

Source plugins
Source settings
Source autocmds
Source mappings-normal
Source mappings-leader

" Do stuff for every item in quickfix list
Source modules/qfdo

Source modules/restore-screen-setup

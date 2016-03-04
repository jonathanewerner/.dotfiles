set nocompatible | filetype indent plugin on | syn on

let $VIM_CONFIG_DIR="~/.dotfiles/vim-config"
source $VIM_CONFIG_DIR/modules/helpers/Source.vim

let mapleader = "\<space>"

Source plugins
Source settings
Source filetype-settings
Source mappings-normal
Source mappings-leader

" Do stuff for every item in quickfix list
Source modules/qfdo

Source modules/restore-screen-setup

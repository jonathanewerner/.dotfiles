let $VIM_CONFIG_DIR="~/.dotfiles/vim-config"
source $VIM_CONFIG_DIR/modules/helpers/Source.vim

Source plugins
Source settings
Source filetype-settings
Source mappings-normal
Source mappings-leader

" Accessor fns for CtrlP
Source modules/ctrlp

" Do stuff for every item in quickfix list
Source modules/qfdo

Source modules/restore-screen-setup

Source modules/vam

"
" Core
"
Source modules/plugins/ctrlp

Source modules/plugins/ultisnips

Source modules/plugins/syntastic

Source modules/plugins/fugitive

Plugin tomtom/tcomment_vim

" ReplaceWithRegister replacement
Source modules/plugins/regreplog

Plugin ervandew/supertab

" Line/character paste (gcp, glp)
Plugin vim-scripts/UnconditionalPaste

" Readline style insertion
Plugin jonathanewerner/vim-rsi

Plugin jaxbot/semantic-highlight.vim

Plugin gabesoft/vim-ags

Plugin Valloric/YouCompleteMe
  " autocmd CompleteDone * pclose

" ----------------------------------------------------------------------------

" Argumentative aids with manipulating and moving between function arguments.
Plugin PeterRincker/vim-argumentative

" Enable repeating supported plugin maps with "."
Plugin tpope/vim-repeat

" wisely add "end" in ruby, endfunction/endif/more in vim script
Plugin tpope/vim-endwise

" Sensible defaults
Plugin tpope/vim-sensible

" more text objects
Source modules/plugins/targets
Plugin kana/vim-textobj-user
Plugin kana/vim-textobj-line
Plugin kana/vim-textobj-entire
Plugin machakann/vim-textobj-delimited

" Vim sugar for the UNIX shell commands that need it the most. Features include:
Plugin tpope/vim-eunuch

" :Verbose: Capture the output of a :verbose invocation into the preview window.
Plugin tpope/vim-scriptease

" Align stuff by <cr> in visual mode
Source modules/plugins/vim-easy-align

" Make |v_b_I| and |v_b_A| available in all kinds of Visual mode.
" For example, you can type vipI# <Esc> instead of vip<C-v>0I# <Esc>.
Plugin kana/vim-niceblock

Plugin mattn/emmet-vim

" Golden-ratio window splits
Plugin roman/golden-ratio

" Highlights html/xml tags
Plugin Valloric/MatchTagAlways

Plugin editorconfig/editorconfig-vim

"
" File-type specific
"
Plugin jonathanewerner/vim-javascript-syntax
Plugin hail2u/vim-css3-syntax
Plugin othree/html5.vim
Plugin elixir-lang/vim-elixir
Plugin groenewege/vim-less
Plugin elzr/vim-json
Plugin drmingdrmer/vim-syntax-markdown

"
" Colorscheme
"
Plugin jonathanewerner/semantic-highlight-base-colorscheme
set background=dark
colorscheme semantic-highlight-base-colorscheme

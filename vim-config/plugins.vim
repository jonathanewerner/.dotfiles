Source modules/vam

"
" Core
"
Source modules/plugins/ctrlp

Source modules/plugins/ultisnips
Plugin jonathanewerner/vim-javascript-snippets
let g:UltiSnipsSnippetDirectories = ["UltiSnips", "UltiSnips/javascript-no-semicolons"]

Source modules/plugins/syntastic

Source modules/plugins/fugitive

" Source modules/plugins/semantic-highlight

Source modules/plugins/pair-tools
" Plugin jiangmiao/auto-pairs
" Plugin vim-scripts/auto-pairs-gentle
" Plugin kana/vim-smartinput

Plugin tomtom/tcomment_vim

" ReplaceWithRegister replacement
Source modules/plugins/regreplog

Plugin ervandew/supertab

" Line/character paste (gcp, glp)
Plugin vim-scripts/UnconditionalPaste

" Readline style insertion
Plugin jonathanewerner/vim-rsi


Plugin gabesoft/vim-ags

Plugin Valloric/YouCompleteMe
" Don't special case completion after dot (".")
let g:ycm_filetype_specific_completion_to_disable = { 'javascript': 1 }
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

" Plugin mattn/emmet-vim

" Golden-ratio window splits
Plugin roman/golden-ratio

" Highlights html/xml tags
" Plugin Valloric/MatchTagAlways

Plugin editorconfig/editorconfig-vim

" Syntax highlighting debugging (Shift-F10)
Plugin gerw/vim-HiLinkTrace

" Surf buffers back and forth
" Plugin ton/vim-bufsurf

" Plugin embear/vim-localvimrc
" let g:localvimrc_sandbox=0
" let g:localvimrc_ask=0

"
" File-type specific
"
Plugin gavocanov/vim-js-indent
Plugin jonathanewerner/vim-javascript-syntax
Plugin hail2u/vim-css3-syntax
Plugin othree/html5.vim
" Plugin elixir-lang/vim-elixir
Plugin groenewege/vim-less
Plugin elzr/vim-json
Plugin drmingdrmer/vim-syntax-markdown

" Plugin othree/yajs.vim
" Plugin pangloss/vim-javascript
" Plugin mxw/vim-jsx
" Plugin othree/es.next.syntax.vim

"
" Colorscheme
"
set background=light
" Plugin morhetz/gruvbox
" colorscheme gruvbox
" let g:gruvbox_bold=1
" let g:gruvbox_contrast_dark=1
" let g:gruvbox_contrast_light=1
" let g:gruvbox_improved_strings=1
" Plugin pbrisbin/vim-colors-off
" colorscheme off

" Plugin jonathanewerner/semantic-highlight-base-colorscheme
" colorscheme semantic-highlight-base-colorscheme

" Plugin jonathanfilip/vim-lucius

Plugin NLKNguyen/papercolor-theme
colorscheme PaperColor

Plugin coot/CRDispatcher
Plugin coot/EnchantedVim
let g:VeryMagicSubstitute = 1
let g:VeryMagicGlobal = 1
let g:VeryMagicRange = 1

Plugin vim-scripts/BufOnly.vim
Plugin tpope/vim-abolish
" Plugin keith/swift.vim
Plugin kballard/vim-swift
" Plugin vim-scripts/groovyindent
Plugin vim-scripts/groovyindent-unix

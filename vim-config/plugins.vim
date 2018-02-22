Source modules/vam

"
" Core
"
Source modules/plugins/ctrlp

Source modules/plugins/ultisnips
Plugin jonathanewerner/vim-javascript-snippets
let g:UltiSnipsSnippetsDir = "~/.vim-config/UltiSnips"
let g:UltiSnipsSnippetDirectories = ["UltiSnips"]
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim-config/UltiSnips']

Source modules/plugins/syntastic

Source modules/plugins/fugitive

" Source modules/plugins/semantic-highlight

" Source modules/plugins/pair-tools
" let g:pairtools_vim_tagwrench = 0
" let g:pairtools_vim_tagwrenchhook = 'tagwrench#BuiltinNoHook'
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
  autocmd CompleteDone * pclose

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
" Plugin tpope/vim-eunuch

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
" Plugin gavocanov/vim-js-indent
" Plugin jonathanewerner/vim-javascript-syntax
" Plugin hail2u/vim-css3-syntax
" Plugin othree/html5.vim
" Plugin elixir-lang/vim-elixir
" Plugin groenewege/vim-less
" Plugin elzr/vim-json
" Plugin drmingdrmer/vim-syntax-markdown

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
colorscheme monochrome

Plugin coot/CRDispatcher
Plugin coot/EnchantedVim
let g:VeryMagicSubstitute = 1
let g:VeryMagicGlobal = 1
let g:VeryMagicRange = 1

Plugin vim-scripts/BufOnly.vim
Plugin tpope/vim-abolish
" Plugin keith/swift.vim
" Plugin kballard/vim-swift
" Plugin vim-scripts/groovyindent
" Plugin vim-scripts/groovyindent-unix

" Plugin flowtype/vim-flow
" let g:flow#enable = 0

" Plugin maralla/validator.vim
" let g:validator_permament_sign = 1
" let g:validator_javascript_checkers = ['eslint']
" let g:validator_javascript_eslint_binary = 'node_modules/.bin/eslint'
" " let g:validator_javascript_eslint_args = '--quiet --cache'
" let g:validator_error_msg_format = "[ ● %d/%d issues ]"
" let g:validator_permament_sign = 1
" Plugin tmhedberg/matchit
Plugin michaeljsmith/vim-indent-object
runtime macros/matchit.vim

" Plugin w0rp/ale
" let g:ale_sign_column_always = 1
" let g:ale_javascript_eslint_executable='node_modules/.bin/eslint_d'
" let g:ale_javascript_flow_use_global=1
" let g:ale_statusline_format = ['   %d ✗', ' %d ⚠', '']
" let g:ale_sign_error = 'X'
" let g:ale_sign_warning = '!'
" let g:ale_linters = {
" \   'javascript': ['eslint', 'flow'],
" \}
" let g:ale_lint_on_save=1
" " let g:ale_lint_on_enter=0
" let g:ale_lint_on_text_changed='never'
" " let g:ale_lint_delay=300
" let g:ale_linters = {
" \   'javascript': ['eslint', 'flow'],
" \   'less': [],
" \   'tex': [],
" \}

" Plugin reedes/vim-colors-pencil
" colorscheme pencil

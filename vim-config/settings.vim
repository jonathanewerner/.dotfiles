set breakindent
set modeline
Source initBackupDir
call InitBackupDir()
set noswapfile
" set fileencodings=utf-8
let &showbreak = '… '
set linebreak
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set winfixheight
" set statusline+=%F


" update semantic highlight more often
set updatetime=500
" do not show freaking preview window
set completeopt=menuone,longest

" set this when working with huge lines
" set synmaxcol=120

" auto save - does this work?
set autowriteall

" auto change pwd to current buffer file directory
" autocmd BufEnter * silent! lcd %:p:h

" auto save all on bufleave
autocmd BufLeave,FocusLost * silent! wall

" remember window split sizes when deleting a split
" noequalalways
set noea

" change where window split are positioned
set splitright
set splitbelow

set history=700

syntax enable

set scrolloff=4

set autoindent
" set smartindent

set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
" set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set number
set undofile


" a buffer becomes hidden when it is abandoned
set hid

" don't redraw while executing macros (good performance config)
set lazyredraw

" for reg exp
set magic



" Remember info about open buffers on close
set viminfo^=%

" clipboard = X11
set clipboard=unnamed

" set t_Co=256

" folds
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo,jump
"set foldmethod=marker
set foldlevelstart=2
 set viewoptions=folds,cursor

" au BufWinLeave * silent! mkview
" au BufWinEnter * silent! loadview

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set gdefault
set incsearch

" show matching brackets
set showmatch
" how many tenths of a second to blink when matching brackets
set matchtime=2

" set hlsearch
set ignorecase
set smartcase

" Automatically indent based on file type: ``filetype indent on``
filetype indent on
" Keep indentation level from previous line: ``set autoindent``
set autoindent

" handle long lines
set wrap
" set textwidth=79
" match ErrorMsg '\%>80v.\+'

" visualize column / line overlength
   " augroup vimrc_autocmds
     " autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
     " autocmd BufEnter * match OverLength /\%74v.*/
   " augroup END

"complete options / line breaks
set formatoptions=cq
" set colorcolumn=79
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" minimum lines below cursor
set scrolloff=23

" new tab for help
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'
" set helpheight=99999


function! Setuphelp()
    " this helps make it easier to jump to tags while editing help files,
    " since a number of tags contain a hyphen.
    " The "@" adds in all "alphabetic" characters, including
    " accented characters beyond ASCII a-z and A-Z.
    setlocal iskeyword=@,!-~,^*,^\|,^\",192-255
endfunction
command! -bar SetupHelp call SetupHelp()

" "toggle between relative and absolute line numbering
" function! numbertoggle()
"   if(&relativenumber == 1)
"     set number
"   else
"     set relativenumber
"   endif
" endfunc

" tweaking for auto complete popup
" highlight Pmenu ctermbg=8 guibg=#606060
" highlight PmenuSel ctermbg=1 guifg=#dddd00 guibg=#1f82cd
" highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" set term=screen-256color

set tags=./.tags,.tags,./tags,tags
set mouse=a

function! NeatFoldText() "{{{2
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()


" hide bottom messages
if has("patch-7.4.314")
  set shortmess+=c
endif
autocmd VimEnter *
\ highlight ModeMsg guifg=bg guibg=bg | highlight WarningMsg guifg=bg

set iskeyword+=:
"for haskell (The 39 is for the prime character)
set iskeyword=a-z,A-Z,_,.,39

" " Go to last file if invoked without arguments.
" autocmd VimEnter * nested if
"   \ argc() == 0 &&
"   \ bufname("%") == "" &&
"   \ bufname("2" + 0) != "" |
"   \   exe "normal! `0" |
"   \ endif


" auto cd
  " A standalone function to set the working directory to the project's root, or
  " to the parent directory of the current file if a root can't be found:
  " (from https://github.com/szw/vim-ctrlspace/issues/36)
  function! s:setcwd()
    let cph = expand('%:p:h', 1)
    if cph =~ '^.\+://' | retu | en
    for mkr in ['.git/', '.hg/', '.svn/', '.bzr/', '_darcs/', '.vimprojects']
      let wd = call('find'.(mkr =~ '/$' ? 'dir' : 'file'), [mkr, cph.';'])
      if wd != '' | let &acd = 0 | brea | en
    endfo
    exe 'lc!' fnameescape(wd == '' ? cph : substitute(wd, mkr.'$', '.', ''))
  endfunction

  autocmd BufEnter * call s:setcwd()

" auto reload on external change
set autoread
set shell=/usr/bin/zsh


" auto strip white space on save
autocmd BufWritePre * :%s/\s\+$//e

" augroup syntastic_eslint
"   autocmd CursorHold *.js nested update
"   autocmd CursorHold *.jsx nested update
" augroup END
" set updatetime=2000

augroup always_show_gutter_bar
  autocmd!
  autocmd BufEnter * sign define dummy
  autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
augroup END

" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  " set statusline=%{getcwd()}/          " current dir
  set statusline+=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%#error#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

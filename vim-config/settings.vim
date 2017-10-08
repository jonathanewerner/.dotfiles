set lazyredraw
" supposed to be faster
set re=1

" i'm not really sure about this
" should prevents indentation on paste
set paste
" Word boundaries. IMPORTANT>
" ' marks a word boundary
set iskeyword-='
" . marks a word boundary
set iskeyword-=.

" Disable startup splash screen
set shortmess+=I

set breakindent
set modeline

Source modules/init-backup-dir
call InitBackupDir()

set noswapfile
let &showbreak = '… '
set linebreak
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set winfixheight

" update semantic highlight more often
set updatetime=500

" do not show freaking preview window
set completeopt=menuone,longest

" auto save - does this work?
set autowriteall

" auto save all on bufleave
autocmd BufLeave,FocusLost * silent! wall

" remember window split sizes when deleting a split
set noequalalways

" change where window split are positioned
set splitright
set splitbelow

set history=700

set scrolloff=4

set showmode
set showcmd
set hidden
set wildmode=list:longest
set visualbell
set ttyfast
set number
set undofile

" a buffer becomes hidden when it is abandoned
set hid

" for reg exp
set magic

" Remember info about open buffers on close
set viminfo^=%

" Set clipboard to x-clipboard (Ctrl-C/V)
" set clipboard=unnamedplus
set clipboard=unnamed

" folds
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo,jump
set foldlevelstart=2
 set viewoptions=folds,cursor

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

set gdefault

" show matching brackets
set showmatch
" how many tenths of a second to blink when matching brackets
set matchtime=2

set ignorecase
set smartcase

" handle long lines
set wrap

"complete options / line breaks
set formatoptions=cq

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" minimum lines below cursor
set scrolloff=23

" new tab for help
cnoreabbrev <expr> h getcmdtype() == ":" && getcmdline() == 'h' ? 'tab help' : 'h'

function! Setuphelp()
    " this helps make it easier to jump to tags while editing help files,
    " since a number of tags contain a hyphen.
    " The "@" adds in all "alphabetic" characters, including
    " accented characters beyond ASCII a-z and A-Z.
    setlocal iskeyword=@,!-~,^*,^\|,^\",192-255
endfunction
command! -bar SetupHelp call SetupHelp()

set mouse=a

" hide bottom messages
" if has("patch-7.4.314")
"   set shortmess+=c
" endif

" This makes the "recording macro" message invisible -- not so great.
" What was the reason for adding this?
" autocmd VimEnter *
" \ highlight ModeMsg guifg=bg guibg=bg | highlight WarningMsg guifg=bg


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

set shell=/usr/local/bin/zsh

" auto strip white space on save
autocmd BufWritePre * :%s/\s\+$//e

augroup always_show_gutter_bar
  autocmd!
  autocmd BufEnter * sign define dummy
  autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
augroup END

Source modules/statusline


" NEOVIM-DOT-APP
" set noshowcmd
" set nolazyredraw

" Don't jump one char left when leaving insert mode
" au InsertLeave * call cursor([getpos('.')[1], getpos('.')[2]+1])

" performance tweak
set synmaxcol=250
syntax sync minlines=256


" TIP: debug scrolling slowness: find expensive syntax highlighting regexes:
" - syntime on
" - scroll around
" - syntime report

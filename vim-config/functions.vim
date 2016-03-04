			" %		current file name
			" #		alternate file name
			" #n		alternate file name n
			" <cfile>		file name under the cursor
			" <afile>		autocmd file name
			" <abuf>		autocmd buffer number (as a String!)
			" <amatch>	autocmd matched name
			" <sfile>		sourced script file or function name
			" <slnum>		sourced script file line number
			" <cword>		word under the cursor
			" <cWORD>		WORD under the cursor
			" <client>	the {clientid} of the last received
			" 		message |server2client()|
		" Modifiers:
			" :p		expand to full path
			" :h		head (last path component removed)
			" :t		tail (last path component only)
			" :r		root (one extension removed)
			" :e		extension only

" filename without extension: expand('%:r')

function! SlimeSendParagraph()
   " Slimeend1 '\n'
    exec "normal \<Plug>SlimeParagraphSend"
endfunction
command! SlimeSendParagraph call SlimeSendParagraph()

function! RacketExec()
    Write
    exec "SlimeSend1 racket " . expand('%p')
endfunction
command! RacketExec call RacketExec()

function! CExec(args)
    write
    exec "!clear; P=" . expand('%:r') . " make && ./" . expand('%:r') . " " . a:args
endfunction
command! CExec call CExec('')
command! -nargs=1 CExecArgs call CExec(<f-args>)


function! PythonExec2()
    write
    exec "SlimeSend1 %run " . expand('%p')
    " normal 0vWh
    " exec "normal \<Plug>SlimeRegionSend"
    " " normal vv
    " normal $
endfunction
command! PythonExec2 call PythonExec2()

function! LatexOpenPdf()
    write
    exec "!xdg-open " . expand('%:r') . ".pdf & "
endfunction
command! LatexOpenPdf call LatexOpenPdf()

function! JuliaExec()
    write
    exec 'SlimuxShellRun include(\"' . expand('%p') . '\")'
    " exec "SlimuxShellRun \\""

endfunction
command! JuliaExec call JuliaExec()

function! ScalaExec()
    write
    exec "SlimeSend1 :load " . expand('%p')
    wincmd w
    SlimeSendParagraph
    wincmd w
    " normal 0vWh
    " exec "normal \<Plug>SlimeRegionSend"
    " " normal vv
    " normal $
endfunction
command! ScalaExec call ScalaExec()

function! ScalaCompile()
    write
    exec "SlimeSend1 :load " . expand('%p')
endfunction
command! ScalaCompile call ScalaCompile()

function! GhciTest()
    write
    SlimeSend1 :r
    wincmd w
    SlimeSendParagraph
    wincmd w
endfunction
command! GhciTest call GhciTest()

function! QuickCheck()
    write
    exec "SlimeSend1 runhaskell " . expand('%p')
endfunction
command! QuickCheck call QuickCheck()
" -------------------------------------------------------------
" Setup for help files.
" -------------------------------------------------------------
"function! Setuphelp()
" " this helps make it easier to jump to tags while editing help files<leader>
" " since a number of tags contain a hyphen.
" " The "@" adds in all "alphabetic" characters<leader> including
" " accented characters beyond ASCII a-z and A-Z.
" setlocal iskeyword=@<leader>!-~,^*,^\|,^\",192-255
" endfunction
" command! -bar SetupHelp call SetupHelp()
let g:nmb = 0

function! AgFromCurrentFile(arg)
    silent exec "Ag " . a:arg expand('%:p:h')
endfunction
command! -nargs=1 AgFromCurrentFile call AgFromCurrentFile(<f-args>)

function! AgConfig(arg)
    silent exec "Ag " . a:arg . " ~/.vim-config"
endfunction
command! -nargs=1 AgConfig call AgConfig(<f-args>)

function! ReloadMaps()
  silent mapclear
  source ~/.vimrc
endfunction
command! ReloadMaps silent! call ReloadMaps()

command! SetWorkingDir silent lcd %:p:h

" fill rest of line with characters
function! FillLine( str )
    " set tw to the desired total length
    let tw = &textwidth
    if tw==0 | let tw = 80 | endif
    " strip trailing spaces first
    .s/[[:space:]]*$//
    " calculate total number of 'str's to insert
    let reps = (tw - col("$")) / len(a:str)
    " insert them, if there's room, removing trailing spaces (though forcing
    " there to be one)
    if reps > 0
        .s/$/\=(' '.repeat(a:str, reps))/
    endif
endfunction

function! SaveToDic()
    normal yhiw
    silent exec "!echo `xclip -o` >> ~/german.dic"
    normal A
    NeoCompleteDictionaryMakeCache
endfunction
command! SaveToDic call SaveToDic()

function! TabularizeWithChar(c)
    normal mmvip
    silent exec "Tabularize /" . a:c
    normal `m
    normal <esc>
endfunction
command! -nargs=1 TabularizeWithChar call TabularizeWithChar(<f-args>)

function! DartExec()
    write
    exec '!dart ' . expand('%p')
endfunction
command! DartExec call DartExec()

function! DartAnalyze()
    write
    " exec 'SlimuxShellRun ' . expand('%p')
    silent exec '!dartanalyzer-client ' . expand('%p')
    " exec "SlimuxShellRun \\""
endfunction

function! DartExecAnalyze()
    call DartExec()
    call DartAnalyze()
endfunction


function! Zeal(arg)
    silent exec 'silent !zeal-show '. &ft . ':' . a:arg
endfunction
command! -nargs=1 Zeal call Zeal(<f-args>)

function! ZealCurrentWord()
    silent exec '!zeal-show ' . &ft . ':' . expand("<cword>")
endfunction
command! ZealCurrentWord call ZealCurrentWord()

command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction

" cabbrev! AgGit :Gcd<bar>:Ag<space>

function! AgMy()
    call SetCWD()
    let g:ag_qhandler="CtrlPQuickfix"
    silent exec "Ag! " . expand("<cword>")
endfunction
command! AgMy call AgMy()

function! s:get_visual_selection()
  " Why is this not a built-in Vim script function?!
  let [lnum1, col1] = getpos("'<")[1:2]
  let [lnum2, col2] = getpos("'>")[1:2]
  let lines = getline(lnum1, lnum2)
  let lines[-1] = lines[-1][: col2 - (&selection == 'inclusive' ? 1 : 2)]
  let lines[0] = lines[0][col1 - 1:]
  return join(lines, "\n")
endfunction

function! AgMyVisual()
    call SetCWD()
    let g:ag_qhandler="CtrlPQuickfix"
    silent exec "Ag! " . s:get_visual_selection()
endfunction
command! AgMyVisual call AgMyVisual()


function! SubstituteCWord()
    normal mA
    call SetCWD()
    let g:cw = expand("<cword>")
    let g:ag_qhandler=""
    silent exec "Ag! " . g:cw
    let g:replacement = input("Enter replacement: ", g:cw)
    exec "Qargs | argdo %s/" . g:cw . "/" . g:replacement . "/cI"
    normal `A
endfunction
command! SubstituteCWord call SubstituteCWord()

function! UndoSubstitution()
    normal mA
    let g:ag_qhandler=""
    silent exec "Ag! " . g:replacement
    silent exec "Qargs | argdo %s/" . g:replacement . "/" . g:cw . "/I"
    normal `A
endfunction
command! UndoSubstitution call UndoSubstitution()


function! SubstituteCWordVisual()
    normal mA
    call SetCWD()
    let g:cw = s:get_visual_selection()
    let g:ag_qhandler=""
    silent exec "Ag! " . g:cw
    let g:replacement = input("Enter replacement: ", g:cw)
    exec "Qargs | argdo %s/" . g:cw . "/" . g:replacement . "/cI"
    normal `A
endfunction
command! SubstituteCWordVisual call SubstituteCWordVisual()



command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

function! ReverseBackground()
 let Mysyn=&syntax
 if &bg=="light"
 se bg=dark
 else
 se bg=light
 endif
 syn on
 exe "set syntax=" . Mysyn
: echo "now syntax is "&syntax
endfunction
command! Invbg call ReverseBackground()

function! SetCWD()
  if exists(':Glcd')
    silent Glcd
  else
    echo "No git repo, using file path as WD"
    silent lcd %:p:h
  endif
endfunction

function! RunMx()
  " let olddir=getcwd()
  " call SetCWD()
  if !exists(':Glcd')
    echo "No git repo, git init for RunMx to work"
    return
  endif

  let dir = getcwd()
    " exec 'silent !tmux send-keys C-q "(cd ' . dir . ' && mx)" C-m'
    silent exec "!~/.dotfiles/bin/mx"
  " endif
endfunction
command! Mx call RunMx()

function! RestartMX()
  " call SetCWD()
    if getcwd() == "/home/jwerner/.dotfiles"
      exec "cd /home/jwerner/dev/dotfiles"
    endif
  silent exec "!~/.dotfiles/bin/mx-restart"
  call RunMx()
endfunction



function! TmuxCDCurrentFile()
    let dir = expand('%:p:h')
    exec 'silent !tmux send-keys C-q "cd \"' . dir . '\"" C-m ls C-m'

endfunction

command! TmuxCDCurrentFile call TmuxCDCurrentFile()

function! TmuxCD(dir)
    exec '!tmux send-keys C-q "cd ' . a:dir . '" C-m ls C-m'
endfunction
command! -nargs=1 Tcd call TmuxCD(<f-args>)

function! TmuxRename()
    call StartTmuxPaneInCurrentFileDir()
    exec 'silent !tmux send-keys "mv \"' . expand("%:t") . '\""'
endfunction
command! TmuxRename call TmuxRename()

function! NewProject(name)
    exec "!mkdir ~/dev/" . a:name

endfunction
command! -nargs=1 -complete=file NP call NewProject(<f-args>)

function! CtrlPMRURelative()
  do BufLeave
  let g:ctrlp_mruf_relative = 1
  let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
  CtrlPMRUFiles
endfunction

function! CtrlPMRUAbsolute()
  do BufLeave
  let g:ctrlp_mruf_relative = 0
  let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
  CtrlPMRUFiles
endfunction

function! CtrlPNormal()
  do BufLeave
  let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
  CtrlP
endfunction

function! CtrlPCurFile()
  do BufLeave
  let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
  CtrlPCurFile
endfunction

function! CtrlPCurFileParent()
  do BufLeave
  echo 'bar'
  let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
  exec "CtrlP " . expand('%:p:h') . "/.."
endfunction

function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<f-args>)

function! Fload(num, fname)
  exec "nnoremap <silent>" . a:num . " :e " . a:fname ."<cr>"
endfunction

function! QuickCmd(...)
  let cmd = join(a:000)
  exec "let g:quickCmd = '" . cmd . "'"

endfunction
command! -nargs=* QuickCmd call QuickCmd(<f-args>)

function! SendQuickCmd()
  silent w
  let cmd = '!tmux send-keys C-u "' . g:quickCmd . '" C-m'
  silent exec cmd
endfunction

function! FloadChar(c, fname)
  exec "nnoremap <silent> '" . a:c . " :e " . a:fname ."<cr>"
endfunction
command! -nargs=* F call Fload(<f-args>)
command! -nargs=* Fc call FloadChar(<f-args>)


" function! Foo(a,b)
"   echo a:a
" endfunction
" command! -nargs=+ Foo call s:Foo(<q-args>)

" Shell ------------------------------------------------------------------- {{{

function! s:ExecuteInShell(command) " {{{
    let command = join(map(split(a:command), 'expand(v:val)'))
    let winnr = bufwinnr('^' . command . '$')
    silent! execute  winnr < 0 ? 'botright vnew ' . fnameescape(command) : winnr . 'wincmd w'
    setlocal buftype=nowrite bufhidden=wipe nobuflisted noswapfile nowrap nonumber
    " echo 'Execute ' . command . '...'
    silent! execute 'silent %!'. command
    silent! redraw
    silent! execute 'au BufUnload <buffer> execute bufwinnr(' . bufnr('#') . ') . ''wincmd w'''
    silent! execute 'nnoremap <silent> <buffer> <LocalLeader>r :call <SID>ExecuteInShell(''' . command . ''')<CR>:AnsiEsc<CR>'
    silent! execute 'nnoremap <silent> <buffer> q :q<CR>'
    silent! execute 'AnsiEsc'
    " echo 'Shell command ' . command . ' executed.'
endfunction " }}}
command! -complete=shellcmd -nargs=+ Shell call s:ExecuteInShell(<q-args>)
nnoremap <leader>! :Shell

function! Packer(pkg)
  exec "Runcmd packer -Ss " . a:pkg
endfunction
command! -nargs=1 Packer call Packer(<f-args>)


function! CopyPath()
  let @* = expand('%')
endfunction
command! CopyPath call CopyPath()

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Type z/ to toggle highlighting on/off.
" nnoremap z :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
" hi Search guibg=gray26 guifg=NONE
" function! AutoHighlightToggle()
"   let @/ = ''
"   if exists('#auto_highlight')
"     au! auto_highlight
"     augroup! auto_highlight
"     setl updatetime=4000
"     echo 'Highlight current word: off'
"     return 0
"   else
"     augroup auto_highlight
"       au!
"       au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
"     augroup end
"     setl updatetime=200
"     echo 'Highlight current word: ON'
"     return 1
"   endif
" endfunction

" Simple re-format for minified Javascript
command! UnMinify call UnMinify()
function! UnMinify()
    %s/{\ze[^\r\n]/{\r/g
    %s/){/) {/g
    %s/};\?\ze[^\r\n]/\0\r/g
    %s/;\ze[^\r\n]/;\r/g
    %s/[^\s]\zs[=&|]\+\ze[^\s]/ \0 /g
    normal ggVG=
endfunction

" generate doc comment template
map <leader>/ :call GenerateDOCComment()<cr>

function! GenerateDOCComment()
  let l    = line('.')
  let i    = indent(l)
  let pre  = repeat(' ',i)
  let text = getline(l)
  let params   = matchstr(text,'([^)]*)')
  let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
  echomsg params
  let vars = []
  let m    = ' '
  let ml = matchlist(params,paramPat)
  while ml!=[]
    let [_,var;rest]= ml
    let vars += [pre.' * @param '.var]
    let ml = matchlist(rest,paramPat,0)
  endwhile
  let comment = [pre.'/**',pre.' * '] + vars + [pre.' */']
  call append(l-1,comment)
  call cursor(l+1,i+3)
endfunction

" Define a command to make it easier to use
command! -nargs=+ QFDo call QFDo(<q-args>)

" Function that does the work
function! QFDo(command)
    " Create a dictionary so that we can
    " get the list of buffers rather than the
    " list of lines in buffers (easy way
    " to get unique entries)
    let buffer_numbers = {}
    " For each entry, use the buffer number as
    " a dictionary key (won't get repeats)
    for fixlist_entry in getqflist()
        let buffer_numbers[fixlist_entry['bufnr']] = 1
    endfor
    " Make it into a list as it seems cleaner
    let buffer_number_list = keys(buffer_numbers)

    " For each buffer
    for num in buffer_number_list
        " Select the buffer
        exe 'buffer' num
        " Run the command that's passed as an argument
        exe a:command
        " Save if necessary
        update
    endfor
endfunction

" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
  finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
  let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
  echohl ErrorMsg
  echomsg a:msg
  echohl NONE
endfunction

" Command ':Bclose' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bclose(bang, buffer)
  if empty(a:buffer)
    let btarget = bufnr('%')
  elseif a:buffer =~ '^\d\+$'
    let btarget = bufnr(str2nr(a:buffer))
  else
    let btarget = bufnr(a:buffer)
  endif
  if btarget < 0
    call s:Warn('No matching buffer for '.a:buffer)
    return
  endif
  if empty(a:bang) && getbufvar(btarget, '&modified')
    call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
    return
  endif
  " Numbers of windows that view target buffer which we will delete.
  let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
  if !g:bclose_multiple && len(wnums) > 1
    call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
    return
  endif
  let wcurrent = winnr()
  for w in wnums
    execute w.'wincmd w'
    let prevbuf = bufnr('#')
    if prevbuf > 0 && buflisted(prevbuf) && prevbuf != w
      buffer #
    else
      bprevious
    endif
    if btarget == bufnr('%')
      " Numbers of listed buffers which are not the target to be deleted.
      let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
      " Listed, not target, and not displayed.
      let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
      " Take the first buffer, if any (could be more intelligent).
      let bjump = (bhidden + blisted + [-1])[0]
      if bjump > 0
        execute 'buffer '.bjump
      else
        execute 'enew'.a:bang
      endif
    endif
  endfor
  execute 'bdelete'.a:bang.' '.btarget
  execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call s:Bclose('<bang>', '<args>')
nnoremap <silent> <Leader>bd :Bclose<CR>

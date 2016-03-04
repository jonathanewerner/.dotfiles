
" Specifies the mode in which to start.
" 0 - All files
" 1 - Open Buffers
" 2 - Track the current extension
" 3 - User mode -- Use a custom, on demand set of extensions
let g:EasyGrepMode=2

let g:EasyGrepSearchCurrentBufferDir=0
" let EasyGrepOpenWindowOnMatch=1

" *EasyGrepFileAssociations*
" [default=&runtimepath/plugin/EasyGrepFileAssociations]

" Specifies the location of a file that contains groups of files that should be
" associated with one another.  When set to an empty string "", no file read
" will be attempted.

" This file has a simple syntax used to logically link different files types.
" A simple configuration is shown below:

"      C=*.c *.h
"      C++=*.cpp *.hpp *.cxx *.hxx *.cc <C>
"      VHDL=*.hdl *.vhd *.vhdl *.vbe *.vst
"      Web=*.htm *.html *.js

" For example, in this configuration, whenever the active file has the .c
" extension, files with the .h extension will also be search.  A special feature
" of this syntax is the ability to link groups together.  For example, the C++
" group links to all files that are in the C group.

" *EasyGrepMode*  [default=0]
" Specifies the mode in which to start.
" 0 - All files
" 1 - Open Buffers
" 2 - Track the current extension
" 3 - User mode -- Use a custom, on demand set of extensions

" Note: I find option 2 to be the most powerful, but option 0 is activated by
" default because it is the most intuitive for users who haven't take the
" time to understand how the script works.  See |EasyGrep_OperationModes|.

" *EasyGrepCommand*  [default=0]
" Specifies the grep command to use.

" 0 - vimgrep
" 1 - grep (follows grepprg)

let g:EasyGrepCommand=1

" When the grep command is set to vimgrep, Vim's builtin |:vimgrep| command will
" be used.
" When the grep command is set to , Vim's builtin |:grep| command will be used.
" This command inspects the 'grepprg' variable to determine the external tool
" that will be used for the search. Note that an external tool is often faster
" to search than vimgrep (see |EasyGrep_Performance|).

" *EasyGrepRecursive*  [default=0]
let g:EasyGrepRecursive=1
" Specifies that recursive search be activated on start.

" *EasyGrepIgnoreCase*  [default=&ignorecase]
" Specifies the case sensitivity of searches.  Note that this can be further
" overrided for vimgrep searches with \c and \C.
let g:EasyGrepIgnoreCase=0

" *EasyGrepHidden*  [default=0]
" Specifies that hidden files search be activated on start.  Note that hidden
" implies the unix meaning of those files that are prepended with a '.', and not
" the Windows meaning of those files with a hidden attribute.

" *EasyGrepFilesToExclude*  [default=""]
" Specifies a list of file patterns that will be excluded from the search.
" Multiple exclusions must be separated by commas. Note that these patterns will
" be passed unmodified on to the search program.

" Currently only supported when EasyGrepCommand=1 and your grepprg is "grep" or
" "ack".

" *EasyGrepAllOptionsInExplorer*  [default=0]
" Specifies that all options be included in the explorer window.

" Note: settting this option is very useful when you want to try out and
" learn all of the options available in this script.

" *EasyGrepWindow*  [default=0]
" Specifies the window to use for matches.
" 0 - quickfix
" 1 - location list

" *EasyGrepWindowPosition*  [default=""]
" Specifies where the error list window is opened.  If empty, the default
" behavior for Vim's error list opening commands will be used. If not empty, the
" value of this option must match one of Vim's splitting positional window
" commands, such as topleft or botright.

" *EasyGrepOpenWindowOnMatch*  [default=1]
" Specifies whether to open the with matches after a search.

" *EasyGrepEveryMatch*  [default=0]
" Specifies that multiple matches on the same line be treated as different
" matches, like the g option to vimgrep.

" *EasyGrepJumpToMatch*  [default=1]
" Specifies that jump to first match be activated, like the j option to vimgrep.

" *EasyGrepSearchCurrentBufferDir*  [default=1]
" Setting this option causes EasyGrep to search not only the current directory,
" but also the directories for all buffers currently opened.

" *EasyGrepInvertWholeWord*  [default=0]
" Specifies that the whole word search keys should be inverted from their
" default meaning.  For example, when this option is activated, <Leader>vv
" matches whole word, while <Leader>vV matches everything that includes the
" word.  Note that this affects both keymappings and commands.

" *EasyGrepFileAssociationsInExplorer*  [default=0]
" Specifies whether to show the file associations list in the options explorer
" window.

" *EasyGrepOptionPrefix*  [default=<leader>vy]
" Specifies the prefix that is used when building keymaps for setting options
" directly.  To specify that no option keymaps be created, set this to the empty
" string.

" Default:
"     let g:EasyGrepOptionPrefix='<leader>vy'
" Custom:
"     let g:EasyGrepOptionPrefix=',oe'      (where ',oe' is your custom prefix)
" None:
"     let g:EasyGrepOptionPrefix=''         (this disables all mappings)

" *EasyGrepReplaceWindowMode*  [default=0]
" Specifies the mode that the script will use when a buffer needs to be changed
" while performing a global replace.
" 0 - Open a new tab for each window
" 1 - Perform a split of the current window with the next window
" 2 - autowriteall; create no new windows

" Note: Option 1 has the possibility of running out of vertical space to
" split more windows.  Actions are taken to make this a non-issue, but this
" option can often be more clunky than other options.
" Note: As a result of the limitation above, option 0 is the only mode that
" won't require saving the files during a replace.

" *EasyGrepReplaceAllPerFile*  [default=0]
" Specifies that selecting 'a' (for all) will apply the replacements on a per
" file basis, as opposed to globally as is the default.

" *EasyGrepExtraWarnings*  [default=1]
" Specifies that warnings be issued for conditions that may be valid but have
" the potential to confuse some users.

" *EasyGrepDefaultUserPattern*  [default=""]
" Specifies the default pattern for 'User' mode. (see |EasyGrepMode| and
" |EasyGrep_OperationModes|).  This pattern must be defined and non-empty if
" |EasyGrepMode| is set to start in 'User' mode.

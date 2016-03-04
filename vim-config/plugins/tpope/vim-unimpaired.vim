nmap { [
nmap } ]
omap { [
omap } ]
xmap { [
xmap }

" *]a*     |:next|
" *[A*     |:first|
" *]A*     |:last|
" *[b*     |:bprevious|
" *]b*     |:bnext|
" *[B*     |:bfirst|
" *]B*     |:blast|
" *[l*     |:lprevious|
" *]l*     |:lnext|
" *[L*     |:lfirst|
" *]L*     |:llast|
" *[<C-L>* |:lpfile|
" *]<C-L>* |:lnfile|
" *[q*     |:cprevious|
" *]q*     |:cnext|
" *[Q*     |:cfirst|
" *]Q*     |:clast|
" *[<C-Q>* |:cpfile| (Note that <C-Q> only works in a terminal if you disable
" *]<C-Q>* |:cnfile| flow control: stty -ixon)
" *[t*     |:tprevious|
" *]t*     |:tnext|
" *[T*     |:tfirst|
" *]T*     |:tlast|

"                                                 *[f*
" [f                      Go to the file preceding the current one
"                         alphabetically in the current file's directory.

"                                                 *]f*
" ]f                      Go to the file succeeding the current one
"                         alphabetically in the current file's directory.

"                                                 *[n*
" [n                      Go to the previous SCM conflict marker or diff/patch
"                         hunk.  Try d[n inside a conflict.

"                                                 *]n*
" ]n                      Go to the next SCM conflict marker or diff/patch hunk.
"                         Try d]n inside a conflict.

" LINE OPERATIONS                                 *unimpaired-lines*

"                                                 *[<Space>*
" [<Space>                Add [count] blank lines above the cursor.

"                                                 *]<Space>*
" ]<Space>                Add [count] blank lines below the cursor.

"                                                 *[e* *v_[e*
" [e                      Exchange the current line with [count] lines above it.
"                                                 *]e* *v_]e*

" ]e                      Exchange the current line with [count] lines below it.

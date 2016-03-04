" <C-a>                   Go to beginning of line.

"                                                 *rsi-CTRL-X_CTRL-A*
" <C-x><C-a>              Access Vim's built-in |i_CTRL-A| or |c_CTRL-A|.

"                                                 *rsi-CTRL-B*
" <C-b>                   Go backwards one character.  On a blank line, kill it
"                         and go back to the previous line.

"                                                 *rsi-CTRL-D*
" <C-d>                   Delete character in front of cursor.  Falls back to
"                         |i_CTRL-D| or |c_CTRL-D| at the end of the line.

"                                                 *rsi-CTRL-E*
" <C-e>                   Go to end of line.  Falls back to |i_CTRL-E| if
"                         already at the end of the line.  (|c_CTRL-E| already
"                         goes to end of line, so it is not mapped.)

"                                                 *rsi-CTRL-F*
" <C-f>                   Move forward one character.  Falls back to
"                         |i_CTRL-F| or |c_CTRL-F| at the end of the line.

"                                                 *rsi-CTRL-T*
" <C-t>                   Transpose two characters.  This is mapped in command
"                         line mode only, as |i_CTRL-T| is too important to
"                         clobber.

"                                                 *rsi-META-BS*
" <M-BS>                  Delete backward one word.

"                                                 *rsi-META-b*
" <M-b>                   Go backwards one word.

"                                                 *rsi-META-d*
" <M-d>                   Delete forwards one word.

"                                                 *rsi-META-f*
" <M-f>                   Go forwards one word.

"                                                 *rsi-META-n*
" <M-n>                   Equivalent to |c_<Down>| or |i_<Down>|.

"                                                 *rsi-META-p*
" <M-p>                   Equivalent to |c_<Up>| or |i_<Up>|.

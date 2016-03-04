" This plugin changes the behavior of I and A in Visual mode to:

" * Make |v_b_I| and |v_b_A| available in all kinds of Visual mode.
" * Adjust the selected area to be intuitive before doing blockwise insertion
"   from linewise Visual mode.

" Both just save a few key types.  For example, you can type:

" * "vipI# <Esc>" instead of "vip<C-v>0I# <Esc>".
" * "vipA++<Esc>" instead of "vip<C-v>$A++<Esc>".

" But the effect is significant.  It makes blockwise Visual mode more useful and
" intuitive.

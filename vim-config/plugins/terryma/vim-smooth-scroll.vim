noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
set mouse=a
noremap <silent> <ScrollWheelUp> :call smooth_scroll#up(4, 0, 1)<CR>
noremap <silent> <ScrollWheelDown> :call smooth_scroll#down(4, 0, 1)<CR>

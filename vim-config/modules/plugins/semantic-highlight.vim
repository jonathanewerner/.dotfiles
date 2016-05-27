Plugin jonathanewerner/semantic-highlight.vim
autocmd FileType jsx,javascript,python call semhl#highlight()
autocmd CursorHold *.jsx,*.js,*.py call semhl#highlight()

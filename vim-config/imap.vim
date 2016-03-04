cll IMAP("mpi", "MPI", "")
call IMAP("---", "--------------------------------------------", "")
call IMAP("prs", 'printf("%s\n", <++>);', "")
call IMAP("prd", 'printf("%d\n", <++>);', "")
call IMAP("forl", 'for (int i=0; i < <++>; ++i) {', "c")

call IMAP("`*", '\cdot', "")

call IMAP("sco ", '$scope', "javascript")
call IMAP("func ", "function(<++>) {\<cr><++>\<cr>}", "javascript")
call IMAP("+++", "«»", "")
call IMAP("1/2", "\\frac{1}{2}", "tex")
call IMAP("1/2", "\\frac{1}{2}", "tex")
" call IMAP("\row1", "\rowi{1}", "tex")
" call IMAP("\-1", "\bra{-1}", "tex")
call IMAP("-1t", "\\bra{-1}^", "tex")
call IMAP("Frac", "\\frac\<cr>{<++>}\<cr>{<++>}", "tex")

  


 




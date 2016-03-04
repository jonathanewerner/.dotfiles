" Start vim from the same directory you ran lein repl from and it will automatically detect the nREPL host/port info, or use :Connect in Vim.

" cpr (my mnemonic: clojure please require) takes the content from the active buffer and requires it inside the REPL.

" cpp (my mnemonic: clojure please print) evaluates the outermost form under the cursor and prints it at the bottom of the screen.

" cqp (my mnemonic: clojure quick print) gives you a one-line REPL prompt at the bottom of the screen (for quick one-liner evals).

" [<C-D> jumps to the definition for the symbol under your cursor, even if it's inside the Clojure source!

" K gives you documentation for symbol under cursor.

" :A takes you to the test (if you're in the implementation) or vice-versa, and :AS or :AV gives it to you in a horizontal or vertical split.

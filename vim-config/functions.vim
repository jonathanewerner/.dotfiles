
function! Refactor_RemoveQuotesFromObjectProps()
  normal 0xf'x
endfunction

function! Refactor_PrependProjectToImportPath(project)
  exec "normal $2T'i" . a:project . "/"
endfunction

function! Refactor_AcceptConsoleLog()
  normal A // eslint-disable-line no-console
endfunction


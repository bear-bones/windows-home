hi Boundary ctermfg=DarkRed ctermbg=Gray
hi Overflow ctermfg=DarkRed
let w:boundary=matchadd('Boundary', '\%>80v.', -1)
let w:overflow=matchadd('Overflow', '\%>81v.', -1)

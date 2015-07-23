" blend into renner's code
command! Rennerize call Rennerize()
function! Rennerize()
    set shiftwidth=3 tabstop=3 softtabstop=3
    imap ,<SPACE> ,
endfunction

command! Unrennerize call Unrennerize()
function! Unrennerize()
    set shiftwidth=4 tabstop=4 softtabstop=4
    iunmap ,<SPACE>
endfunction

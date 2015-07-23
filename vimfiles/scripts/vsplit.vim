" makes sure our focused window is 80 characters wide, and all other windows
" have an even share of the rest of the space

" autocommand to adjust when the window is resized
augroup resized
    autocmd!
    autocmd VimResized * call Resize()
    autocmd WinEnter * call Resize()
augroup END



" this function does it all
function! Resize()
    " don't bother if we aren't in a large window
    if &columns <= 80
        return
    endif

    " set current window number and get window count
    let wcurrent = winnr()
    let wcount = 0

    wincmd r
    while winnr() != wcurrent
        let wcount += 1
        wincmd r
    endwhile


    " if there is more than one window, tweak the width so we get one 80-column
    " focused window and the rest evenly split
    if wcount > 0 
        " available width
        let awidth = &columns - wcount
        " primary viewport width
        let pwidth = float2nr(min([&columns, 80]))
        " secondary viewport widths
        let swidth = float2nr(floor((awidth - pwidth) / wcount))

        " winwidth >= winminwidth must hold true at all times        
        if &winwidth < swidth
            execute "set winwidth=" . string(swidth)
        endif

        " have to assign in this order or the mod set winmin overwrites
        execute "set winminwidth=" . string(swidth)
        execute "set winwidth=" . string(pwidth)

        " have to do this so that there is room for another vsp
        let modswidth = float2nr(floor((awidth - pwidth) / (wcount + 1)))
        execute "set winminwidth=" . string(modswidth)
    endif
endfunction

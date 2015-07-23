augroup skeleton
    autocmd!
    autocmd BufNewFile fx-*.p call s:FxSkeleton()
    autocmd BufNewFile w?[ems]*.p call s:ScreenSkeleton()
    autocmd BufNewFile w?f*.p call s:FreeformSkeleton()
    autocmd BufNewFile w?t*.p call s:TabSkeleton()
augroup end



" {{{ fx-... files
function! s:FxSkeleton()
    let short_file = expand('%:t:r')
    let short_file = 's/\%\%SHORTFILE\%\%/' . short_file . '/g'

    let system = expand('%:p:h:h:t')
    let skeleton = '~/.vim/skeleton/'
    if system ==# 'rel50' || system ==# 'mc03'
        let skeleton = skeleton .'fxm.p'
    else
        let skeleton = skeleton . 'fxf.p'
    endif

    silent! execute 'read !sed "' . short_file . '" ' . skeleton
    write

    normal ggdd3l
    startinsert
endfunction
" }}}



" {{{ common stuff
function! s:Skeleton(skeleton)
    let short_file = expand('%:t:r')
    let short_sys = expand('%:p:h')
    let dat_file = toupper(short_file) . '.DAT'

    while strpart(short_file, 3, 1) == '0'
        let short_file = strpart(short_file, 0, 3) . strpart(short_file, 4)
    endwhile

    if short_sys ==# '/home/fin10/billing'
        let short_sys = 'BL'
    elseif short_sys ==# '/home/fin10/cfap'
        let short_sys = 'AP'
    elseif short_sys ==# '/home/fin10/cfgl'
        let short_sys = 'GL'
    elseif short_sys ==# '/home/fin10/payroll'
        let short_sys = 'PAYROLL'
    elseif short_sys ==# '/home/rel50/windows'
      \ || short_sys ==# '/home/mc03/windows'
        if strpart(short_file, 0, 2) ==? 'wa'
            let short_sys = 'APPT'
        else
            let short_sys = 'MED'
        endif
    endif

    let short_file = 's/\%\%SHORTFILE\%\%/' . short_file . '/g'
    let short_sys = 's/\%\%SHORTSYS\%\%/' . short_sys . '/g'
    let dat_file = 's/\%\%DATFILE\%\%/' . dat_file . '/g'

    silent! execute 'read !sed "' . short_file . ';' . short_sys . ';' . dat_file . '" '
      \ . a:skeleton
    write

    normal ggdd3l
    startinsert
endfunction
" }}}



" {{{ progress class files
"function! ClassSkeleton()
"    normal ggddwhi
"endfunction
" }}}



" {{{ entry/search/menu screen skeleton file
function! s:ScreenSkeleton()
    call s:Skeleton('~/.vim/skeleton/w_e.p')
endfunction
" }}}



" {{{ tab screen skeleton file
function! s:TabSkeleton()
    call s:Skeleton('~/.vim/skeleton/w_t.p')
endfunction
" }}}



" {{{ freeform skeleton file
function! s:FreeformSkeleton()
    call s:Skeleton('~/.vim/skeleton/w_f.p')
endfunction
" }}}

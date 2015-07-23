if exists('current_compiler')
    finish
endif
let current_compiler = 'progress'

if exists(':CompilerSet') != 2
    command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo&vim



CompilerSet makeprg=pro-compile
CompilerSet errorformat=
    \%Z%[*]%[*]\ %f\ Could\ not\ understand\ line\ %l.%.%#,%E%[*]%#\ %#%m\ (%n)



" external interface
function! b:Dictionary()
    silent !pro-dict
    redraw!
endfunction

function! b:Compile()
    let s:window = winnr()
    let s:procedure = expand('%')
    let s:procedure_name = expand('%:t')
    call s:Compile(0, 0, 0)
endfunction

function! b:CompileAndPrompt()
    let s:window = winnr()
    let s:procedure = expand('%')
    let s:procedure_name = expand('%:t')
    call s:Compile(1, 0, 0)
endfunction

function! b:Run()
    let s:window = winnr()
    let s:procedure = expand('%')
    let s:procedure_name = expand('%:t')
    call s:Compile(0, 1, 0)
endfunction

function! b:Ship()
    let s:window = winnr()
    let s:procedure = expand('%')
    let s:procedure_name = expand('%:t')
    call s:Compile(0, 0, 1)
endfunction



" internal functions
let s:window = 0
let s:procedure = ''
let s:procedure_name = ''



function! s:Compile(prompt, run, ship)
    execute 'silent make ' . s:procedure . ' | redraw! | copen'
    let errors = getqflist()
    let line = get(errors, 0).text

    if len(errors) == 1 && strridx(line, ' successfully compiled.') > 0
        let ship = '?'
        let message = line

        if a:ship
            let ship = 'y'
        elseif a:run
            let ship = 'n'
        elseif !a:prompt
            let ship = 'n'
            echomsg message
        endif

        while ship == '?'
            let ship = input(message . ' Ship? ')
            if ship !=? 'y' && ship !=? 'n' && ship !=? 'yes' && ship !=? 'no' && strlen(ship)
                let message = 'Invalid response. Requires y/n/yes/no.'
                let ship = '?'
            endif
        endwhile

        if a:run
            call s:Run()
        elseif ship ==? 'y' || ship ==? 'yes'
            call s:Ship()
        else
            cclose
            execute s:window . 'wincmd w'
        endif
    else
        copen
    endif
endfunction


function! s:Run()
    let qflines = []
    let buffer = winbufnr(s:window)

    for line in split(system('pro-run ' . s:procedure), '\n')
        call add(qflines, { 'text' : line, 'type' : 'I' })
    endfor

    call setqflist(qflines)
    copen
endfunction


function! s:Ship()
    let qflines = []
    let canned = 0
    let buffer = winbufnr(s:window)

    for line in split(system('pro-ship ' . s:procedure), '\n')
        if line ==# 'Beginning encryption...'
            \ || line ==# 'Encryption complete.'
            \ || stridx(line, 'Beginning clifix to ') == 0
            \ || line ==# 'Clifix complete.'
            let canned += 1
        endif
        call add(qflines, { 'text' : line, 'type' : 'I' })
    endfor


    if len(qflines) == canned
        echomsg s:procedure_name . ' shipped.'
        cclose
        execute s:window . 'wincmd w'
    else
        echon ''
        call setqflist(qflines)
        copen
    endif
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save

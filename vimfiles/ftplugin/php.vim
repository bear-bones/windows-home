" f1 => compile && run
 map <silent><f1>      :!php -l %:p && php %:p<cr>
imap <silent><f1> <esc>:!php -l %:p && php %:p<cr>
" f2 => compile
 map <silent><f2>      :!php -l %:p<cr>
imap <silent><f2> <esc>:!php -l %:p<cr>

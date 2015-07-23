" f1 => compile && run
 map <silent><f1>      :!perl -c %:p && perl %:p<cr>
imap <silent><f1> <esc>:!perl -c %:p && perl %:p<cr>
" f2 => compile
 map <silent><f2>      :!perl -c %:p<cr>
imap <silent><f2> <esc>:!perl -c %:p<cr>

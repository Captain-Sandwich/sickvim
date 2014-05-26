let python_highlight_all = 1 " Supposedly better python syntax

setlocal tabstop=4

setlocal omnifunc=pythoncomplete#Complete

" Error formats
setlocal efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

" Error codes http://pypi.python.org/pypi/flake8
" W293 - blank line contains whitespace
" E701 - multiple statements on one line
" E128, E127 - Indent level of continuation lines
" E712 - comparisons to True
" E262 - inline comments have space after hash; but sphinx auto attributes
"        want a `#:`.
" let g:syntastic_python_checker_args='--ignore=W293,E701,E128,E127,E712,E262'
let g:syntastic_python_checker_args='--ignore=W293,E701,E712,E262'

" run py.test
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

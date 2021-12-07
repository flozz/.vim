let g:black_virtualenv = '__env__'

autocmd FileType python nnoremap <buffer> <c-f> :Black<Cr>
autocmd FileType python vnoremap <buffer> <c-f> :Black<Cr>

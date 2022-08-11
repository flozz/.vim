let g:black_virtualenv = "~/bin/vim/black"

autocmd FileType python nnoremap <buffer> <c-f> :Black<Cr>
"autocmd FileType python vnoremap <buffer> <c-f> :Black<Cr>

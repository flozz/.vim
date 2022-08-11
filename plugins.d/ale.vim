" Show errors and warnings in Airline statusline
let g:airline#extensions#ale#enabled = 1

let b:ale_fixers = {
    \ 'javascript': ['prettier', 'eslint']
    \}


autocmd FileType javascript nnoremap <buffer> <c-s-f> :ALEFix<Cr>

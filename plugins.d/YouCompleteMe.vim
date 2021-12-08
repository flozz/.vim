let g:ycm_filetype_blacklist = {
    \ 'tagbar': 1,
    \ 'notes': 1,
    \ 'markdown': 1,
    \ 'netrw': 1,
    \ 'unite': 1,
    \ 'text': 1,
    \ 'vimwiki': 1,
    \ 'pandoc': 1,
    \ 'infolog': 1,
    \ 'leaderf': 1,
    \ 'mail': 1,
    \ 'rst': 1,
    \ 'gitcommit': 1,
    \ }

" Auto-close the preview window after the user accepts the offered completion string
let g:ycm_autoclose_preview_window_after_completion = 1

" Invoke the completion menu
let g:ycm_key_invoke_completion = '<C-Space>'

" Do not display doc popup by defaut
let g:ycm_auto_hover = ""

" Toggle doc popup
nmap <leader>d <plug>(YCMHover)

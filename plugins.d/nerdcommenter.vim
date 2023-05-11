vnoremap <c-space> <esc>:call nerdcommenter#Comment('x', 'toggle')<cr>gv
nnoremap <c-space> <esc>:call nerdcommenter#Comment('n', 'toggle')<cr>

" <c-space> is interpreted as <c-@> in terminals...
vnoremap <c-@> <esc>:call nerdcommenter#Comment('x', 'toggle')<cr>gv
nnoremap <c-@> <esc>:call nerdcommenter#Comment('n', 'toggle')<cr>

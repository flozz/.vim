call plug#begin($HOME."/.vim/plugins/")

" ==============================================================================
" Theme
" ==============================================================================

Plug 'flozz/gruvbox'


" ==============================================================================

call plug#end()

" Load plugins config
let s:plugins = split(globpath($HOME."/.vim/plugins.d", "*.vim"))
for s:plugin in s:plugins
    exec ":source ".s:plugin
endfor

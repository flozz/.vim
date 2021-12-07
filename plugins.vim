call plug#begin($HOME."/.vim/plugins/")

" ==============================================================================
" Theme
" ==============================================================================

Plug 'flozz/gruvbox'

" ==============================================================================
" Misc
" ==============================================================================

" File system explorer for the Vim editor.
Plug 'scrooloose/nerdtree'

" making NERDTree feel like a true panel, independent of tabs
Plug 'jistr/vim-nerdtree-tabs'


" ==============================================================================

call plug#end()

" Load plugins config
let s:plugins = split(globpath($HOME."/.vim/plugins.d", "*.vim"))
for s:plugin in s:plugins
    exec ":source ".s:plugin
endfor

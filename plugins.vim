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

" Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline', { 'do' : $HOME.'/.vim/fonts/install' }


" ==============================================================================
" Git
" ==============================================================================

" Vim plugin for Git
Plug 'tpope/vim-fugitive'

" Shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'

" A plugin of NERDTree showing git status flags
Plug 'Xuyuanp/nerdtree-git-plugin'


" ==============================================================================

call plug#end()

" Load plugins config
let s:plugins = split(globpath($HOME."/.vim/plugins.d", "*.vim"))
for s:plugin in s:plugins
    exec ":source ".s:plugin
endfor

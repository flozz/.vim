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
Plug 'vim-airline/vim-airline'

" Plugin to toggle, display and navigate marks
Plug 'kshenoy/vim-signature'

" Ultimate hex editing system with Vim
Plug 'Shougo/vinarise.vim'

" Undo history visualizer for VIM (gundo replacement)
Plug 'mbbill/undotree'


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
" Syntax
" ==============================================================================

" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

" A very fast, multi-syntax context-sensitive color name highlighter
Plug 'ap/vim-css-color'


" ==============================================================================
" Language specific plugins
" ==============================================================================

" Node.js
Plug 'moll/vim-node'

" JavaScript / HTML / CSS
Plug 'maksimr/vim-jsbeautify', { 'do' : 'git submodule update --init --recursive' }

" Python
Plug 'EgZvor/vim-black', { 'branch': 'main' }
Plug 'Vimjas/vim-python-pep8-indent'

" Vim
Plug 'ynkdir/vim-vimlparser'
Plug 'syngan/vim-vimlint'

" Multilanguage syntax checker
Plug 'scrooloose/syntastic'


" ==============================================================================
" Edition
" ==============================================================================

" Rethinking Vim as a tool for writing
Plug 'reedes/vim-pencil'

" Automatic table creator & formatter
Plug 'dhruvasagar/vim-table-mode'

" Comment functions so powerful
Plug 'scrooloose/nerdcommenter'

" True Sublime Text style multiple selections for Vim
Plug 'terryma/vim-multiple-cursors'

" surround.vim: Delete/change/add parentheses/quotes/XML-tags/much more with ease
Plug 'tpope/vim-surround'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'


" ==============================================================================

call plug#end()

" Load plugins config
let s:plugins = split(globpath($HOME."/.vim/plugins.d", "*.vim"))
for s:plugin in s:plugins
    exec ":source ".s:plugin
endfor

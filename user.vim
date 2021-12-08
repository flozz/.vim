" ==============================================================================
" Misc
" ==============================================================================

" Enamble modeline
set modeline

" Use system clipboard as default register
set clipboard=unnamedplus

" Default folder for swap files
set directory=/tmp

" Search config
set selection=inclusive
set showmatch!

" Automatically set current dir to the one of the opened file
set autochdir

" Highlight search pattern matches
set hlsearch


" ==============================================================================
" Theme / UI
" ==============================================================================
"
set background=dark
colorscheme gruvbox

if has("gui_running")
    "highlight Normal guibg=#111111 guifg=white
    set guioptions-=a  " Disable primary seletion
    set guioptions-=b  " No Horizontal scrollbar
    set guioptions-=r  " No Vertical scrollbar
    set guioptions-=T  " No Toolbar
    set guioptions-=m  " No menubar
    set ttyfast        " Fast terminaltargetInfo && targetInfo.point === indice
    set columns=120    " Window's width
    set lines=40       " Window's height
    set mousemodel=popup_setpos  " display contex menu on right click
    set guifont=Monospace\ 11
endif

" Display line number
set number


" ==============================================================================
" Text / Editing
" ==============================================================================

" Make special chars visible
set listchars=nbsp:¤,tab:❭─,trail:•
set list!

" Number of space for a tab
set tabstop=4

" Disable line wrap
set nowrap

" Keep some context when scrolling
set scrolloff=4

" Strip trailing whitespaces when saving
autocmd BufWritePre * %s/\s\+$//e

" Disable blinking of matching pairs
set matchtime=0


" ==============================================================================
" Windows-like mapping
" ==============================================================================

"silent! source $VIMRUNTIME/mswin.vim "MSWin shortcut (Ctrl+C, Ctrl+V,...)

" Ctrl+Q -> alias Ctrl+V for visual mode
noremap <C-Q> <C-V>

" Ctrl+X -> Cut selection to clipboard
vnoremap <C-X> "+x

" Ctrl+C -> Copy selection to clipboard
vnoremap <C-C> "+ygv

" Ctrl+V -> Paste from clipboard
map <C-V> "+gP
cmap <C-V> <C-R>+
exec 'inoremap <script> <C-V> <C-G>u' . paste#paste_cmd['i']
exec 'vnoremap <script> <C-V> ' . paste#paste_cmd['v']

" Ctrl+S -> Save
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Ctrl+Z -> undo
noremap <C-Z> u
inoremap <C-Z> <C-O>u

" Ctrl+Y -> redo
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>


" ==============================================================================
" Custom mapping
" ==============================================================================

" Indent
nmap <tab> >>
nmap <s-tab> <<
vmap <tab> >gv
vmap <s-tab> <gv

" PageUp/Down -> nop
map <pageup> <nop>
map <pagedown> <nop>
imap <pageup> <nop>
imap <pagedown> <nop>

" Shift+PageUp/Down -> Buffer prev/next
map <s-pageup> :bp<cr>
map <s-pagedown> :bn<cr>
imap <s-pageup> <esc>:bp<cr>i
imap <s-pagedown> <esc>:bn<cr>i

" Leader t -> new tab
nnoremap <leader>t :tabnew<cr>

" Remove last search highlight
nnoremap <C-l> :nohlsearch<CR><C-l>

" Open location pannel
nmap <Leader>l :lopen<Cr>


" ==============================================================================
" Language specific config and mapings
" ==============================================================================

" Text
autocmd FileType markdown,text,rst setlocal list
autocmd FileType markdown,text,rst nnoremap <buffer> <c-f> gqip
autocmd FileType markdown,text,rst vnoremap <buffer> <c-f> gq
autocmd FileType markdown,text,rst inoremap <buffer> <c-f> <esc>gqipA

" json
autocmd BufRead,BufNewFile .eslintrc setfiletype json
autocmd BufRead,BufNewFile .jshintrc setfiletype json

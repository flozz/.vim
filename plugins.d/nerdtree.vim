let ignore = '\v\~$'
let ignore .= '|\.bak$'
let ignore .= '|\.png$'
let ignore .= '|\.jpe?g$'
let ignore .= '|\.gif$'
let ignore .= '|\.svg$'
let ignore .= '|\.xcf$'
let ignore .= '|\.pyc$'
let ignore .= '|node_modules'
let ignore .= '|.git$'
let ignore .= '|.bzr$'
let ignore .= '|__env__'
let ignore .= '|__pycache__'
let ignore .= '|\.egg-info$'
let ignore .= '|\.cache$'
let ignore .= '|\.tox$'
let ignore .= '|\.o$'
let ignore .= '|\.rel$'
let ignore .= '|\.noi$'
let ignore .= '|\.sym$'
let ignore .= '|\.lk$'
let ignore .= '|\.lst$'
let ignore .= '|\.nox$'
let ignore .= '|\.pytest_cache$'

" Ignore files listed below
let g:NERDTreeIgnore = [ignore]

" show hidden files
let g:NERDTreeShowHidden=1

nnoremap <F12> :NERDTreeTabsToggle<cr>
inoremap <F12> <esc>:NERDTreeTabsToggle<cr><c-w>la


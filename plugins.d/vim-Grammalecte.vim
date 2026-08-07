let g:grammalecte_cli_py = "/usr/bin/grammalecte-cli"

let g:grammalecte_disable_rules = ""
let g:grammalecte_disable_rules .= " apostrophe_typographique"
let g:grammalecte_disable_rules .= " tab_début_ligne"
let g:grammalecte_disable_rules .= " esp_début_ligne"
let g:grammalecte_disable_rules .= " typo_guillemets_typographiques_doubles_ouvrants"
let g:grammalecte_disable_rules .= " typo_guillemets_typographiques_doubles_fermants"
let g:grammalecte_disable_rules .= " typo_points_suspension1"

" reStructuredText
autocmd FileType rst let g:grammalecte_disable_rules .= " tab_début_ligne"
autocmd FileType rst let g:grammalecte_disable_rules .= " tab_milieu_ligne"
autocmd FileType rst let g:grammalecte_disable_rules .= " esp_début_ligne"
autocmd FileType rst let g:grammalecte_disable_rules .= " esp_milieu_ligne"
autocmd FileType rst let g:grammalecte_disable_rules .= " typo_ponctuation_superflue3"
autocmd FileType rst let g:grammalecte_disable_rules .= " typo_points_suspension3"

hi GrammalecteGrammarError  guisp=blue gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=blue term=underline cterm=none
hi GrammalecteSpellingError guisp=red  gui=undercurl guifg=NONE guibg=NONE ctermfg=white ctermbg=red  term=underline cterm=none

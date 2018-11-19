" ====================================================================================
" ==================== NERD TREE =====================================================
" ====================================================================================
map <C-b> :NERDTreeToggle<CR>
let NERDTreeMapOpenInTab='t'

" ====================================================================================
" ==================== FZF ===========================================================
" ====================================================================================
map <C-p> :Files<CR>
map <C-S-t> :Tags<CR>
map <C-S-f> :Rg 


" ====================================================================================
" ==================== ALE ===========================================================
" ====================================================================================
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'pyls'],
\}
map <F2> :ALEGoToDefinitionInTab<CR>
set completeopt=menu,menuone,preview,noselect,noinsert

" ====================================================================================
" ==================== YOU COMPLETE ME ===============================================
" ====================================================================================
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" ====================================================================================
" ==================== PYTHON MODE ===================================================
" ====================================================================================
let g:pymode_lint = 0
let g:pymode_rope = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_rename_bind = '<F6>'

" ====================================================================================
" ==================== JAVASCRIPT ====================================================
" ====================================================================================
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1


" ====================================================================================
" ==================== DEOPLETE ====================================================
" ====================================================================================
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" ====================================================================================
" ==================== DEOPLETE FLOW ====================================================
" ====================================================================================
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
  endfunction

  let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

  if g:flow_path != 'flow not found'
    let g:deoplete#sources#flow#flow_bin = g:flow_path
    endif
"
"
" ====================================================================================
" ==================== COLORSCHEMES ====================================================
" ====================================================================================
colorscheme palenight


" ====================================================================================
" ==================== NEOSNIPPETS ====================================================
" ====================================================================================
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

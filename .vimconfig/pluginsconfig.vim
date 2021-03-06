" ====================================================================================
" ==================== NERD TREE =====================================================
" ====================================================================================
map <silent> <C-b> :NERDTreeToggle<CR>
map <silent> <C-S-b> :NERDTreeFind<CR>
let NERDTreeMapOpenInTab='t'


" ====================================================================================
" ==================== FZF ===========================================================
" ====================================================================================
map <C-p> :Files<CR>
map <silent> <leader>t :Tags <C-R><C-W><CR>
map <C-F> :BLines<CR>
nnoremap <silent> <Leader><Leader>t call fzf#vim#tags({'options': '-q '.shellescape(expand('<cword>'))})<CR>
nnoremap <silent> <Leader>rg :Rg <C-R><C-W><CR>
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_history_dir = '~/.local/share/fzf-history'


" ====================================================================================
" ==================== ALE ===========================================================
" ====================================================================================
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\   'python': ['flake8', 'pyls'],
\}

"let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 0

map <F2> :ALEGoToDefinition<CR>
map <S-F2> :ALEGoToDefinitionInTab<CR>
map <F8> :ALENext<CR>
map <S-F8> :ALEPrevious<CR>
set completeopt=menu,menuone,preview,noselect,noinsert

" ====================================================================================
" ==================== YOU COMPLETE ME ===============================================
" ====================================================================================
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_show_diagnostics_ui = 0
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

" ====================================================================================
" ==================== PYTHON MODE ===================================================
" ====================================================================================
let g:pymode_lint = 0
let g:pymode_rope = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_rename_bind = '<F6>'

" ====================================================================================
" ==================== JAVASCRIPT ====================================================
" ====================================================================================
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1


" ====================================================================================
" ==================== NERD COMMENTER ================================================
" ====================================================================================
let g:NERDSpaceDelims = 1


" ====================================================================================
" ==================== DEOPLETE ======================================================
" ====================================================================================
" <TAB>: completion.
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('max_list', 30)
call deoplete#custom#source('flow', 'rank', 999)
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

"
" ====================================================================================
" ==================== COLORSCHEMES ==================================================
" ====================================================================================
colorscheme palenight


" ====================================================================================
" ==================== NEOSNIPPETS ===================================================
" ====================================================================================
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
let g:neosnippet#enable_completed_snippet = 1

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


" ====================================================================================
" ==================== AIRLINE =======================================================
" ====================================================================================
 let g:airline#extensions#tabline#enabled = 1
 let airline#extensions#tabline#show_buffers = 0


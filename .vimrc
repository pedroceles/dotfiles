set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tomtom/tcomment_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sleuth'
Plugin 'vim-scripts/AutomaticLaTexPlugin'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'matthewsimo/angular-vim-snippets'
Plugin 'alexbyk/vim-ultisnips-react'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-scripts/Toggle'
Plugin 'tmhedberg/matchit'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'marijnh/tern_for_vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tpope/vim-abolish'
Plugin 'isRuslan/vim-es6'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()            " required
syntax on
filetype plugin indent on
"#source /home/pedroceles/Dropbox/vim/.vimrc
highlight Pmenu ctermbg=yellow ctermfg=black
highlight PmenuSel ctermbg=white ctermfg=black


set modeline
set background=dark
set number
set grepprg=grep\ -nH\ $
let g:tex_flavor='latex'

au FileType python,*.py setlocal sw=4 et
set t_Co=256

nnoremap <space> za
vnoremap <space> zf

set foldmethod=indent
set foldnestmax=2
set foldlevelstart=99
set foldlevel=99

au BufNewFile,BufRead python,*.py setlocal foldmethod=indent foldlevel=1

set colorcolumn=130
set hlsearch

set shell=bash\ -i

" \todo shortcut para escrever TODO com data data
nnoremap <leader>todo a# TODO Pedro Celes - <Esc>"=strftime("[%d-%m-%Y]:")<CR>pa
inoremap <leader>todo # TODO Pedro Celes - <Esc>"=strftime("[%d-%m-%Y]:")<CR>pa

"\s para substituir palavra no cursor
nnoremap  <leader>s *N:s///g<Left><Left>

"autident xml
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

inoremap <silent> . .<esc>a

" BEGIN tabsetup ----------------------
" chaves movem pelas tabs
noremap <s-t> :tabnew 
nnoremap } :tabn<cr> 
nnoremap { :tabp<cr>
" END tabsetup ----------------------

"LATEXCONFIG"
let g:atp_Compiler = "python"

"python-mode
let g:pymode_rope_completion = 0
let g:pymode_folding = 0
let g:pymode_rope_goto_definition_bind = "<C-]>"

" Supertab + YCM + UltiSnips
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_use_ultisnips_completer = 1
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsListSnippets = "<s-tab>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:SuperTabDefaultCompletionType = '<C-Tab>'

" BEGIN Yankstack setup -------------------------------
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste
" END Yankstack setup -------------------------------

" BEGIN Ctrl-P ----------------------
let g:ctrlp_prompt_mappings = { 
\ 'AcceptSelection("t")': ['<cr>'], 
\ 'AcceptSelection("e")': ['<c-t>', '<2-LeftMouse>'], }
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/*migrations*,*/*.pyc,*/node_modules/*,*/bower_components/*


" END Ctrl-P ----------------------

" BEGIN Python-MODE setup ----------------------
"
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
"   Rope autocomplete
" g     Rope goto definition
" d     Rope show documentation
" f     Rope find occurrences
" b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
" modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
" modes)
" ]M            Jump on next class or method (normal, visual, operator
" modes)
" let g:pymode_rope = 1

let g:python_highlight_all = 1
" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
let g:pymode_lint_ignore = "E501"

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" autocomplete
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autoimport = 0

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = 'b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
" END Python-MODE setup ----------------------
"
" BEGIN RainbowParentheses setup -------------------------------
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" END RainbowParentheses setup -------------------------------
"
" BEGIN SYNTASTIC
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_python_checkers = []
" END SYNTASTIC

" BEGIN CAMELCASE MOTION
call camelcasemotion#CreateMotionMappings('<leader>')
" END CAMELCASE MOTION

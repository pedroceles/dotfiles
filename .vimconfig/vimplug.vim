call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
call plug#end()


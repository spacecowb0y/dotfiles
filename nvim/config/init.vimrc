""""""""""""""""""""""""""""""""""
"           Vim Plug		 "
""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

"Deoplete AutoComplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Deoplete Ternjs for Smart JS
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' ,'for': ['javascript', 'javascript.jsx'] }
" Syntax Highlight for Vim 
Plug 'othree/yajs.vim'
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }

" Tab autocomplete
Plug 'ervandew/supertab'

" Ultimate Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rstacruz/vim-hyperstyle'

Plug 'greg-js/vim-react-es6-snippets'

" Ctrl P Fuzzy Finder
Plug 'ctrlpvim/ctrlp.vim'
" NerdTree
Plug 'scrooloose/nerdtree'
" Nerdtree with git situation
Plug 'Xuyuanp/nerdtree-git-plugin'
" Auto close brackets smartly
Plug 'jiangmiao/auto-pairs'
" Colors in my Sass
Plug 'ap/vim-css-color'
" Git Situation on my Lines like Atom
Plug 'airblade/vim-gitgutter'
" Pug Syntax Highlight
Plug 'digitaltoad/vim-pug'
" Syntastic for StandardJS
Plug 'vim-syntastic/syntastic', { 'do': 'npm install -g standard babel-eslint' }
" Extending OmniComplete for JS on Vim
Plug '1995eaton/vim-better-javascript-completion'
" A bunch of JS Syntax like JSX
Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx'
" Autoclose html tags
Plug 'alvan/vim-closetag'
" Oceanic Next
Plug 'mhartington/oceanic-next'
" Vim Airline
Plug 'vim-airline/vim-airline'
" Nerd Commenter
Plug 'scrooloose/nerdcommenter'
" Indent lines
Plug 'Yggdroot/indentLine'

" Numbers craze
Plug 'myusuf3/numbers.vim'
call plug#end()
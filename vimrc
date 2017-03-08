set nocompatible
filetype off

"vundle
set rtp+=~/.vim/bundle/Vundle.vim



call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold' "pliage

Plugin 'vim-scripts/indentpython.vim' "python 
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'
Plugin 'klen/rope-vim'

Plugin 'tpope/vim-fugitive' "GIT
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'jnurmine/Zenburn' "colorisation
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree' "explorateur de fichier
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'kien/ctrlp.vim' " recherche

call vundle#end()

filetype plugin indent on
set nu " numerotation ligne 
let mapleader=" "

" fenetrage
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" pliage code
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" fichier de type Python
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
autocmd FileType python set foldmethod=indent
let python_highlight_all=1
syntax on

"python  virtualenv 
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
       	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF




"autre type de fichier
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" suprimer les espaces inutiles
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" colorisation
if has('gui_running')
  set background=dark
    colorscheme solarized
  else
    colorscheme zenburn
  endif
call togglebg#map("<F5>")

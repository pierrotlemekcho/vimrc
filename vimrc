set nocompatible
filetype off

"vundle
set rtp+=~/.vim/bundle/Vundle.vim



call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'klen/python-mode'
Plugin 'rope-vim'




call vundle#end()


filetype plugin indent on
set nu " numerotation ligne 

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" python

set encoding=utf-8
 
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"===============================https://unlogic.co.uk/2013/02/08/vim-as-a-python-ide/
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END


set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
map <F2> :NERDTreeToggle<CR>
set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

autocmd FileType python set foldmethod=indent
let python_highlight_all=1
syntax on
let g:ycm_server_python_interpreter='python3'

" python  virtualenv 
":python3 << EOF 
"import os 
"virtualenv = os.environ.get('VIRTUAL_ENV') 
"if virtualenv : 
"	activate_this = os.path.join(virtualenv, 'bin', 'activate_this.py')
"	if os.path.exists(activate_this) :
"		exec(compile(open(activate_this).read(), activate_this, 'exec'), {'__file__': activate_this})
"	
"EOF


" autre type de fichier

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" suprimer les espaces inutileau BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/



" colorisation
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif



call togglebg#map("<F5>")

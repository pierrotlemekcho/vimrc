set nocompatible
filetype off

"vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'preservim/nerdtree'
"Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Plugin 'scrooloose/syntastic'
"Plugin 'jistr/vim-nerdtree-tabs'
"Plugin 'klen/python-mode'
"Plugin 'rope-vim'


call vundle#end()
filetype plugin indent on

set nu " numerotation ligne 
set undofile
set undodir=~/.vim/undodir "undo persistant
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <space> za 

" Enable folding
set foldmethod=indent
set foldlevel=99

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py set tabstop=4
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2
au BufNewFile,BufRead *.js,*.html,*.css set expandtab
au BufNewFile,BufRead *.js,*.html,*.css set autoindent


highlight BadWhitespace ctermbg=red guibg=red

"highlight BadWhitespace ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead, BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/



set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" === Gestion automatique des environnements virtuels Python ===
" Active automatiquement le bon venv (.venv local ou ~/.vim/ycm_venv)
" et synchronise YouCompleteMe + ALE

" --- Détection automatique du venv et mise à jour des variables d'environnement ---
function! AutoDetectAndActivateVenv()
    let l:cwd = getcwd()
    let l:local_venv = l:cwd . '/.venv'
    let l:global_venv = expand('~/.vim/ycm_venv')

    if isdirectory(l:local_venv)
        let $VIRTUAL_ENV = l:local_venv
        let $PATH = l:local_venv . '/bin:' . substitute($PATH, l:global_venv . '/bin:', '', '')
        let g:ycm_python_interpreter_path = l:local_venv . '/bin/python3'
    else
        let $VIRTUAL_ENV = l:global_venv
        let $PATH = l:global_venv . '/bin:' . substitute($PATH, l:local_venv . '/bin:', '', '')
        let g:ycm_python_interpreter_path = l:global_venv . '/bin/python3'
    endif

    " --- Configuration ALE (si installé) ---
    " Utiliser le même interpréteur Python que YCM
    if exists('g:ale_python_executable')
        let g:ale_python_executable = g:ycm_python_interpreter_path
    else
        let g:ale_python_executable = g:ycm_python_interpreter_path
    endif

    " Forcer ALE à se rafraîchir quand le venv change
    if exists(':ALELint')
        ALELint
    endif
endfunction

" --- Lancer la détection automatique ---
autocmd BufEnter *.py call AutoDetectAndActivateVenv()



let python_highlight_all=1
syntax on

if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set clipboard=unnamed  "OK

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>






let g:ycm_server_python_interpreter='python3'
let g:ycm_log_level = 'debug'
let g:ycm_keep_logfiles = 1


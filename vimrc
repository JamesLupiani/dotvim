set nocompatible

call pathogen#infect()

syntax on
filetype plugin on
filetype indent on

" Windows-only options
if has("win32")
    set gfn=Consolas
    if has('gui_running')
        color molokai
    else
        color koehler
    endif
    set directory=$TEMP
    if exists("+lines")
        set lines=50
    endif
    if exists("+columns")
        set columns=100
    endif
else
    color molokai
    let g:clang_library_path='/usr/local/lib'
endif

set t_Co=256
set background=dark

set autoindent
set backspace=2 " backspace can delete previous chars
set expandtab
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4

set ofu=syntaxcomplete#Complete

" Folding
set foldenable
set foldmethod=manual
nnoremap <space> za " Space toggles fold

"set laststatus=2
"set statusline+=%{fugitive#statusline()}


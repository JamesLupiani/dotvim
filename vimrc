set nocompatible

call pathogen#infect()

syntax on
filetype plugin on
filetype indent on

" Windows-only options
if has("win32")
    set gfn=Consolas
"    set directory=.,$TEMP
else
    set t_Co=256
    let g:clang_library_path='/usr/local/lib'
endif

color molokai
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


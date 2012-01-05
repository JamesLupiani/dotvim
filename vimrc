set nocompatible

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on
filetype plugin on
filetype indent on

color koehler

" Windows-only options
if has("win32")
    set gfn=Consolas
    set directory=.,$TEMP
endif

" Screen sizing
if has("gui_running")
    set lines=999 columns=999
else
    if exists("+lines")
        set lines=50
    endif
    if exists("+columns")
        set columns=100
    endif
endif

set autoindent
set backspace=2 " backspace can delete previous chars
"set expandtab
set number
"set tabstop=4
"set softtabstop=4
"set shiftwidth=4

set ofu=syntaxcomplete#Complete

" Folding
set foldenable
set foldmethod=manual
nnoremap <space> za " Space toggles fold


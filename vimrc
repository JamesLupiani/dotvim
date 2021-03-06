set nocompatible

call pathogen#infect()

syntax on
filetype plugin on
filetype indent on

" Custom colors
:autocmd ColorScheme * highlight LengthWarning ctermfg=yellow guifg=yellow
:autocmd ColorScheme * highlight LengthError ctermfg=red guifg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

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
set backspace=indent,eol,start
set expandtab
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Make formatting apparent
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Highlight 81st col, and 101 and above really visible
call matchadd('LengthWarning', '\%81v', 100)
call matchadd('LengthError', '\%>101v.\+', -1)

" Show trailing whitespace & spaces before tab, and tabs beyond the start of
" the line
match ExtraWhitespace /\s\+$\| \+\ze\t/

set ofu=syntaxcomplete#Complete

"set laststatus=2
"set statusline+=%{fugitive#statusline()}

let g:syntastic_enable_signs = 1

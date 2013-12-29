" .vimrc

" Disable Vi compatibility
set nocompatible

if has("syntax")
    " Enable syntax highlighting
    syntax enable
    " Set dark bACKGROund
    " set background=dark
    " Set colorscheme
    silent! colorscheme base-16
endif

" Backspace through everything in INSERT mode
set backspace=indent,eol,start

" Optimize for fast terminal connections
set ttyfast

" Use UTF-8 without BOM
set encoding=utf-8 nobomb

" Use 4 spaces for indentation
set shiftwidth=2

" Use 4 spaces for soft tab
set softtabstop=2

" Use 4 spaces for tab
set tabstop=2

" Expand tab to spaces
set expandtab

" Enable line numbers
set number
:highlight LineNr guibg=base03 guifg=base0

" Highlight current line
:highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline

" Start scrolling three lines before the horizontal window border
set scrolloff=3

" Don’t reset cursor to start of line when moving around.
set nostartofline

set t_kD=<Ctrl-v><fn-Delete>
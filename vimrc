" Use Vundle to manage plugins (https://github.com/gmarik/vundle)
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'mayansmoke'
Bundle 'delimitMate.vim'
Bundle 'DeleteTrailingWhitespace'
Bundle 'scratch.vim'
Bundle 'JavaScript-Indent'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'vim-scripts/octave.vim--'

" Enable syntax highlighting and indentation
syntax on
filetype plugin indent on
augroup filetypedetect
    au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END

" Indentation settings
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4

" Trim trailing whitespace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'

" Case-sensitive searches only if capital letter in search expression
set ignorecase
set smartcase

" Show popup menu on insert mode completions
set completeopt=menu,longest

" Show possible file/command completions
set wildmenu
set wildmode=list:longest

" Disable swap and backup files
set noswapfile
set nowritebackup

" Other settings
set laststatus=2
set noshowmode
set linebreak
set visualbell
set autoread
set hidden

" GUI settings
if has('gui_running')
    set guifont=Source\ Code\ Pro:h12
    set guioptions-=T
    colorscheme mayansmoke
    :au BufAdd,BufNewFile * nested tab sball
endif

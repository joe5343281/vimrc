" Normal setup
set nu
set ai
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
syntax on

" Color
set t_Co=256
colo torte
set cursorline
set cursorcolumn
hi Statement cterm=bold
hi PreProc cterm=bold
hi Type cterm=bold
hi cursorline cterm=none ctermbg=DarkMagenta ctermfg=White

" PowerLine 
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" Plugin setup
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'rust-lang/rust.vim'             
Plugin 'honza/vim-snippets'
Plugin 'JamshedVesuna/vim-markdown-preview'
call vundle#end()
filetype plugin indent on

let vim_markdown_preview_github=1

set nocompatible              " be iMproved, required
filetype off                  " required
set tabstop=2 softtabstop=0 noexpandtab shiftwidth=2 smarttab

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Nerdtree file explorer
Plugin 'scrooloose/nerdtree'

" Fuzzy search ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

" Emmet abbreviation expander
Plugin 'mattn/emmet-vim'

Plugin 'leafgarland/typescript-vim'

"Typescript IDE features
Plugin 'Quramy/tsuquyomi'

"syntax checking
Plugin 'vim-syntastic/syntastic'
"Start - Integration with syntastic and tsuquyomi

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 

"End - Integration with syntastic and tsuquyomi

Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

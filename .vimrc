"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'othree/xml.vim'
Plugin 'groenewege/vim-less'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'bling/vim-airline'

call vundle#end()            " required
"filetype plugin on    " required
syntax enable

filetype on
filetype plugin on
filetype indent on

set timeoutlen=50

set autoread

set scrolloff=8

set backspace=eol,start,indent
set whichwrap=b,s,<,>,[,]

set encoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos
set nobomb

set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

set autoindent
set smartindent
set cindent

set wrap
set linebreak

set number
set ruler

set laststatus=4

set showmatch

set magic

set ignorecase
set smartcase
set hlsearch
set incsearch

set nobackup
set nowritebackup
set noswapfile

let g:airline_powerline_fonts = 1

autocmd FileType html,php,css,less imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
\  'html': {
\    'empty_element_suffix': ' />'
\  }
\}

set completeopt-=preview



"powerline 
set rtp+=/Library/Python/2.7/site-packages/powerline/bindings/vim
" These lines setup the environment to show graphics and colors correctly.
set nocompatible
set t_Co=256
 
let g:minBufExplForceSyntaxEnable = 1
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
 
if ! has('gui_running')
   set ttimeoutlen=10
   augroup FastEscape
      autocmd!
      au InsertEnter * set timeoutlen=0
      au InsertLeave * set timeoutlen=1000
   augroup END
endif
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Inconsolata\ for\ Powerline:h14
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline

"theme
colo molokai
let g:molokai_original = 1
let g:rehash256 = 1



"taglist
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

"pathogen
"execute pathogen#infect()
"syntax on
"filetype plugin indent on



"unity dict
"自动补全
let s:extfname = expand("%:e")
if s:extfname ==?"cs"
    set dictionary+=d:~/.vim/dict/UnityCS.txt
    set complete +=k
endif

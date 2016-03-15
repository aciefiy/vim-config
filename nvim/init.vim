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
Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-surround'
Plugin 'isRuslan/vim-es6'
Plugin 'mxw/vim-jsx'
Plugin 'xandox/vim-csharp'

call vundle#end()            " required
"filetype plugin on    " required
syntax enable
"vim-jsx conf
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

filetype on
filetype plugin on
filetype indent on

set timeoutlen=500
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
set laststatus=2
set showmatch
set magic
set ignorecase
set smartcase
set hlsearch
set incsearch
set nobackup
set nowritebackup
set noswapfile

"粘贴板保持和系统相同
set clipboard=unnamedplus

" 开启光亮光标行
set cursorline
" 开启光亮光标列
set cursorcolumn

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'molokai'

au BufNewFile,BufRead *.vue setf javascript
autocmd FileType html,php,css,less imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
\  'html': {
\    'empty_element_suffix': ' />'
\  }
\}

set completeopt-=preview

"theme
set t_Co=256
"colo solarized
colo molokai
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark

"taglist
let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口

"YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 3 
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_complete_in_comments = 1

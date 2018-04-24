set nocompatible
set nu
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set list "设置空格显示为+号
set listchars=trail:.
filetype on
filetype plugin on
filetype indent on
set cursorline
set backspace=2
set nobackup
set noswapfile
set autoread
set autowrite
set ignorecase
set hlsearch
set incsearch
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8
set helplang=cn
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set fillchars=vert:\ ,stl:\ ,stlnc:\
colorscheme ron

let mapleader=","

nmap tl :Tlist<CR>
nmap ql :CtrlPBuffer<CR>

nmap <C-v> :cw<cr>
nmap <C-g> :cclose<cr>

nmap <C-m> :cnext<CR>
nmap <C-n> :cprev<CR>

inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>

set tags=tags;
set autochdir


inoremap ,, <Esc>A

vnoremap <leader>y "+y
vmap     <leader>y "+y


set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let session_directory = "~/.vim/session"
let session_autoload = "no"
let session_autosave = "no"

let Tlist_Show_One_File=1    "只显示当前文件的tags
let Tlist_WinWidth=40        "设置taglist宽度
let Tlist_Exit_OnlyWindow=1  "tagList窗口是最后一个窗口，则退出Vim
let Tlist_Use_Right_Window=1 "在Vim窗口右侧显示taglist窗口


set laststatus=2     " Always show the statusline
set t_Co=256         " Explicitly tell Vim that the terminal support 256 colors
let g:Powerline_symbols = 'unicode'


set nocompatible              " be iMproved, required
filetype off                  " required

" ==============================================================================
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" ==============================================================================
" 安装的所有插件
call vundle#begin()

" 必须安装，let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 来自github

"主题
Plugin 'flazz/vim-colorschemes'

"底部状态栏
Plugin 'Lokaltog/vim-powerline'

"文件目录
Plugin 'scrooloose/nerdtree'

"快速查找
Plugin 'kien/ctrlp.vim'

"快速注释
Plugin 'scrooloose/nerdcommenter'

"自动补全
Plugin 'Shougo/neocomplcache.vim'

"括号补全
Plugin 'jiangmiao/auto-pairs'
Plugin 'taglist.vim'
Plugin 'tomasr/molokai'
Plugin 'autoload_cscope.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'christoomey/vim-system-copy'

"语法分析
Plugin 'vim-syntastic/syntastic'

" 来自vim

" non github repos

call vundle#end()            " required

" ==============================================================================
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ==============================================================================
" vundle命令
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal


"NERDTree 插件配置
map tt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden = 1 "NERDTREE显示隐藏文件

setlocal omnifunc=javacomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType java set completefunc=javacomplete#CompleteParamsInf
autocmd FileType java inoremap <expr><CR> pumvisible()?"\<C-Y>":"<CR>"

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1

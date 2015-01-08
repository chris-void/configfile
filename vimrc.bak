
" System vimrc file for MacVim
"
" Maintainer:	Bjorn Winckler <bjorn.winckler@gmail.com>
" Last Change:	Sat Aug 29 2009
" The default for 'backspace' is very confusing to new users, so change it to a
" more sensible value.  Add "set backspace&" to your ~/.vimrc to reset it.
" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).

set backspace+=indent,eol,start
call pathogen#infect()
call pathogen#helptags()
set nocompatible
map <C-N> :NERDTreeToggle <cr>
map <C-T> :TlistToggle <cr>
" 设置编码自动识别, 中文引号显示  
"set fileencodings=utf-8,cp936,big5,euc-jp,euc-kr,latin1,ucs-bom  
set fileencodings=utf-8,gbk  
set ambiwidth=double 
"开启语法高亮
syntax enable
syntax on
"设置显示行号
set number
"set nuw=1
"显示当前的行号列号：
set ruler

"在状态栏显示正在输入的命令
set showcmd
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" 自动检测文件类型并加载相应的设置
filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
filetype on " enables filetype detection
filetype plugin on "enables filetype specific plugins
filetype indent on
"依文件类型设置自动缩进
filetype indent plugin on

"Pydiction
let g:pydiction_location='/Applications/MacVim.app/Contents/Resources/vim/runtime/ftplugin/complete-dict'
let g:pydiction_menu_height=20

"ColorScheme
colorscheme desert
" 允许退格键删除和tab操作  
set smartindent  
set smarttab  
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
set textwidth=79
"设置字体、字号
set guifont=Monaco:h12

"设置默认窗口大小
"set lines=30 columns=100

"设置ctags
let Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
set tags=~/.vim/stltags

"设置TagList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open=1"打开代码时自动开启Tlist

"NERDTree配置{{{
map <F3> :NERDTreeToggle<CR>
let NERDTreeChDirMode=2  "选中root即设置为当前目录
"let NERDTreeQuitOnOpen=1 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头  0传统+-|号
let NERDChristmasTree=1
let NERDTreeMouseMode=2
"autocmd BufRead *  25vsp  ./"自动开启NerdTree
"}}}


"MiniDufExplorer
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0


"设置窗口排布方式
"let g:AutoOpenWinManager=1
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"

function! NERDTree_Start()
        exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
        return 1
endfunction
map <C-B> :WMToggle<CR>


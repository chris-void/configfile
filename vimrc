version 6.0
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
noremap! <D-Left> <Home>
noremap! <M-Left> <C-Left>
noremap! <D-Right> <End>
noremap! <M-Right> <C-Right>
inoremap <D-Up> <C-Home>
inoremap <M-Up> <CR>{
inoremap <D-Down> <C-End>
inoremap <M-Down> }
inoremap <M-BS> 
inoremap <D-BS> 
map  ggVGY
vmap  "+y
nmap \w :w!
nmap \f :find
nmap gx <Plug>NetrwBrowseX
map <F12> gg=G
nnoremap <F2> :g/^\s*$/d 
nnoremap <C-F2> :vert diffsplit 
map <M-F2> :tabnew  
"#map <F3> :tabnew .  

" 设置ctrlp.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

map <C-F3> \be  
map <F5> :call CompileRunGcc()
map <F8> :call Rungdb()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cfile>"),0)
noremap <D-Left> <Home>
noremap <M-Left> <C-Left>
noremap <D-Right> <End>
noremap <M-Right> <C-Right>
noremap <D-Up> <C-Home>
noremap <M-Up> {
noremap <D-Down> <C-End>
noremap <M-Down> }
vmap <BS> "-d
map!  ggVGY
inoremap ( ()i
inoremap ) =ClosePair(')')
inoremap [ []i
inoremap ] =ClosePair(']')
inoremap { {}O
inoremap } =ClosePair('}')
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set cursorcolumn 
"set cursorcolumn cterm=white ctermbg=white ctermfg=white guibg=white guifg=white
set cursorline 
"set cursorline   cterm=white ctermbg=white ctermfg=white guibg=white guifg=white

"hi        Cursor         guifg=grey20           guibg=#00FFD7           gui=NONE        "光标所在的字符
hi CursorColumn   ctermbg=white     guibg=white       guifg=white        "光标所在的屏幕列
hi CursorLine     ctermbg=white     guibg=white          guifg=white        "光标所在的屏幕行
set autowrite
set background=dark
set backspace=2
set cindent
set clipboard=unnamed
set cmdheight=2
set completeopt=longest,menu
set confirm
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fillchars=vert:\ ,stl:\ ,stlnc:\\
set gdefault
set guifont=Monaco:h13
colorscheme obsidian2 "Tomorrow-Night-Eighties molokai solarized 
set guioptions=
set guitablabel=%M%t
set helplang=cn
set history=1000
set hlsearch
set ignorecase
set incsearch
set iskeyword=@,48-57,_,192-255,_,$,@,%,#,-
set langmenu=zh_CN.UTF-8
set laststatus=2
set makeprg=g++\ -Wall\ \ %
set matchtime=1
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set report=0
set ruler
set scrolloff=3
set selection=exclusive
set selectmode=mouse,key
set shiftwidth=4
set showmatch
set smartindent
set nu
set smarttab
set softtabstop=4
set noswapfile
set tabstop=4
set tags=tags
set termencoding=utf-8
set viminfo='100,<50,s10,h,!
set whichwrap=b,s,<,>,h,l
set wildmenu
" vim: set ft=vim :

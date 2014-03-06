if has('vim_starting')
  " Be iMproved 
  set nocompatible               

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimshell'
NeoBundle 'ack.vim'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tpope/vim-rails'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'bling/vim-airline'
NeoBundle 'Yggdroot/indentLine'
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "garbas/vim-snipmate"
NeoBundle "honza/vim-snippets"
NeoBundle 'ervandew/supertab'
NeoBundle 'honza/vim-snippets'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'vim-scripts/Conque-Shell'

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" enable syntax
syntax on

" 打开语法高亮
syntax enable

" set color theme
colorscheme molokai

" mapleader
let mapleader = ","

" CtrlP
let g:ctrlp_map = ',,'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_by_filename = 1

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }

" tComment
map <c-c> gcc

" tab
set expandtab
" 设置tab键的宽度
set tabstop =2
" 换行时行间交错使用2个空格
set shiftwidth =2
" 自动对齐
set autoindent
" 自动缩进2空格
set cindent shiftwidth =2
" 智能自动缩进
set smartindent
" 设置自动缩进
set ai! 
" 显示行号
set number 

" 针对不同的文件类型采用不同的缩进式
filetype indent on 

" 针对不同的文件类型加载对应的插件
filetype plugin on

" 启用自动补全
filetype plugin indent on

" 设定文件浏览器目录为当前目录  
set bsdir=buffer  
" 设置编码  
set enc=utf-8  
" 设置文件编码  
set fenc=utf-8  
" 设置文件编码检测类型及支持格式  
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936


"scss,sass
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.sass set filetype=scss

"coffee script
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
hi link coffeeSpaceError NONE
hi link coffeeSemicolonError NONE
hi link coffeeReservedError NONE
map <leader>cf :CoffeeCompile watch vert<cr>

"let skim use slim syntax
au BufRead,BufNewFile *.skim set filetype=slim

"ctags
set tags+=~/tags

" buffer
" 允许在有未保存的修改时切换缓冲区
set hidden 
map <s-tab> :bp<cr>
map <tab> :bn<cr>
map ,bd :bd<cr>


" vimrc edit
map ,e :e ~/.vimrc<CR>
autocmd! bufwritepost .vimrc source ~/.vimrc

" quick esc
imap jj <esc>

" quick quite
map ,q :q!<CR>

" search
set ic
set incsearch
" 搜索到文件两端时不重新搜索
set nowrapscan               

" ack
map ,k :Ack <cword><ENTER>
" let g:ackprg = 'ag --nogroup --nocolor --column'

" NERDTreeTabsToggle
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" tagbar
let g:tagbar_ctags_bin='/usr/local/Cellar/ctags/5.8/bin/ctags'
let g:tagbar_width=30
map ,t :TagbarToggle<cr>

" indentLine
let g:indentLine_char = '¦'

" vim-markdown
" Disable Folding
let g:vim_markdown_folding_disabled=1

" Set Initial Foldlevel
let g:vim_markdown_initial_foldlevel=1


" Conque-Shell
map ,h :ConqueTermSplit
map ,v :ConqueTermVSplit

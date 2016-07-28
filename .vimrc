"""""""""""""""""" Pathogen Config

" 将 pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/pathogen/autoload/pathogen.vim

" 运行 pathogen
execute pathogen#infect()

"""""""""""""""""" End Pathogen Config








"""""""""""""""""" VI Plugin Config

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

"""""""""""""""""" End VI Plugin Config







"""""""""""""""""" Syntax Hightlight

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

"""""""""""""""""" End Syntax Hightlight










"""""""""""""""""" Code Fold

" za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

"""""""""""""""""" End Code Fold








"""""""""""""""""" UI Config

" 设置主题
set background=dark
"colorscheme molokai

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
"set cursorline
"set cursorcolumn

" 高亮显示搜索结果
set hlsearch

"""""""""""""""""" End UI Config








"""""""""""""""""" TagBar

" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'g' : 'enum',
        \ 'n' : 'namespace',
        \ 'c' : 'class',
        \ 's' : 'struct',
        \ 'u' : 'union'
    \ },
    \ 'scope2kind' : {
        \ 'enum'      : 'g',
        \ 'namespace' : 'n',
        \ 'class'     : 'c',
       \ 'struct'    : 's',
       \ 'union'     : 'u'
    \ }
\ }

"""""""""""""""""" End TagBar







"""""""""""""""""" NerdTree

" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

"""""""""""""""""" End NerdTree















"************************************************
"                   User Config
"************************************************


"""""""""""""""""" Include Tags

" sudo ctags -R --c-kinds=+lpx --fields=+aiKlmnSz --extra=+fq
set tags+=/usr/local/include/tags
set tags+=/usr/include/tags
set tags+=~/WorkSpace/engine/include/tags

"""""""""""""""""" End Include Tags

"""""""""""""""""" Short Cast

" F12函数定义查找
map <F12> <Esc> <Esc> <C-]>
map! <F12> <Esc> <Esc> <F12>

" F10查找列表
map <F10> <Esc> <Esc> :ts <CR>
map! <F10> <Esc> <Esc> <F10>

" 工程快速查找
nnoremap <Leader>f :CtrlSF<CR> 
"""""""""""""""""" End Short Cast


"************************************************
"                  End User Config 
"************************************************













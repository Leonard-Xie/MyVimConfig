"""""""""""""""""" Pathogen Config

" 将 pathogen 自身也置于独立目录中，需指定其路径 
runtime bundle/pathogen/autoload/pathogen.vim

" 运行 pathogen
execute pathogen#infect()

"""""""""""""""""" End Pathogen Config


" Include tags
set tags+=~/.vim/tags/clang.tags
set tags+=~/.vim/tags/ubuntuSys.tags
set tags+=~/.vim/tags/engine.tags


" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on


"""""""""""""""""" Short Cast

" F12函数定义查找
:map <F12> <Esc> <Esc> <C-]>
:map! <F12> <Esc> <Esc> <F12>

" F10查找列表
:map <F10> <Esc> <Esc> :ts <CR>
:map! <F10> <Esc> <Esc> <F10>

"""""""""""""""""" End Short Cast












"""""""""""""""""" UI Config

" 设置主题
set background=dark
colorscheme molokai

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
set cursorline
set cursorcolumn

" 高亮显示搜索结果
set hlsearch

"""""""""""""""""" End UI Config


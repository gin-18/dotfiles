" 打开高亮
syntax on

" set-part
" ----------------------------------------
" 设置插件的匹配度
set nocompatible
filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on

" 设置tab键的缩进格数
set tabstop=2
set shiftwidth=2
set softtabstop=2

" 设置光标距离顶部和底部的固定位置
set scrolloff=5

" 设置编码格式为utf-8
set encoding=utf-8

" 当窗口不能完整显示一行内容时，会换行显示
set wrap

" 显示行号
set number

" 以相对位置的方式显示行号
set relativenumber

" 在命令模式下输入字符时，按下tab键会提示可选项，类似linux终端的自动补全
set wildmenu

" 高亮搜索结果
set hlsearch

" 在搜索状态下输入字符时，显示高亮（边输入边高亮）
set incsearch

" 忽略大小写
set ignorecase

" 智能大小写
set smartcase

" 将折叠方式设置为manual
set foldmethod=manual

" 光标所在的行高亮
set cursorline

" 窗口在下方打开
set splitbelow

" 光标所在的列高亮
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermfg=242 ctermfg=White guibg=DarkRed guifg=White

" let-part
" ----------------------------------------
" 解决不同终端下vim的配色问题
let &t_ut=''

" 设置leader键为空格键
let mapleader=" "

" 设置不同模式下显示不同的光标样式
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"

exec "nohlsearch"

" 设置重新进入文件时，光标留在上次退出的地方
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 退出插入模式时自动切换到英文
let s:fcitx_cmd = executable("fcitx5-remote") ? "fcitx5-remote" : "fcitx-remote"
autocmd InsertLeave * let b:fcitx = system(s:fcitx_cmd) | call system(s:fcitx_cmd.' -c')
autocmd InsertEnter * if exists('b:fcitx') && b:fcitx == 2 | call system(s:fcitx_cmd.' -o') | endif

" source keyMaps.vim
source ~/.config/nvim/init/keyMaps.vim

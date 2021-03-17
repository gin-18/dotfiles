" -------------------------------------------------------------------
"
" Auto load for first time uses
"
" -------------------------------------------------------------------
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" -------------------------------------------------------------------
"
" vim-init
"
" -------------------------------------------------------------------
" 打开高亮
syntax on
" 不兼容vi 
set nocompatible
filetype on
filetype indent on 
filetype plugin on
filetype plugin indent on
" 设置tab键的缩进格数
set tabstop=4
set shiftwidth=4
set softtabstop=4
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
" 自动切换当前工作路径
set autochdir
" 将折叠方式设置为manual
set foldmethod=manual
" 光标所在的行高亮
set cursorline
" 窗口在下方打开
set splitbelow
" 光标所在的列高亮
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermfg=242 ctermfg=White guibg=DarkRed guifg=White
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

" -------------------------------------------------------------------
"
" keyMapping
"
" -------------------------------------------------------------------
map Q :q<CR>
map s :w<CR>
map S :wq<CR>
" 打开一个新的标签页
map nt :tabe<CR>
" 切换到下一个标签页
map <Tab>l gt
" 切换到上一个标签页
map <Tab>h gT
" 打开拼写检查
map <LEADER>sc :set spell!<CR>
" 上下分屏，并且光标在上屏幕
map <LEADER><UP> :set nosplitbelow<CR>:split<CR>
" 上下分屏，并且光标在下屏幕
map <LEADER><DOWN> :set splitbelow<CR>:split<CR>
" 左右分屏，并且光标在左屏幕
map <LEADER><LEFT> :set nosplitright<CR>:vsplit<CR>
" 左右分屏，并且光标在右屏幕
map <LEADER><RIGHT> :set splitright<CR>:vsplit<CR>
" 改变分屏的大小
map <S-UP> :res +5<CR>
map <S-DOWN> :res -5<CR>
map <S-LEFT> :vertical resize+5<CR>
map <S-RIGHT> :vertical resize-5<CR>
" 按两下空格键''并且进入插入模式
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" noremap
" -------------------------------------------------------------------
noremap K 5k
noremap J 5j
noremap H 0
noremap L $
noremap n nzz
noremap N Nzz
noremap <LEADER>nh :nohlsearch<CR>
noremap <LEADER>co :!chromium %&<CR><CR>
noremap <LEADER>ch o<!----><Esc>F-;i
noremap <LEADER>cc o/**/<Esc>F*i
noremap <LEADER>cj o/*<CR>*/<Esc>O<Tab>
noremap <M-p> "+p
" inoremapp
" -------------------------------------------------------------------
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i

" vnoremap
" -------------------------------------------------------------------
vnoremap Y "+y

" tnoremap
" -------------------------------------------------------------------
tnoremap <M-Q> <C-\><C-n>

" -------------------------------------------------------------------
"
" colorscheme
"
" -------------------------------------------------------------------
" 设置注释的颜色
hi Comment cterm=NONE ctermfg=103 ctermbg=000
" 修改字符串的颜色
hi Sting cterm=NONE ctermfg=189 ctermbg=000
" 修改类型的颜色
hi Type cterm=NONE ctermfg=141 ctermbg=000
" 设置数字的颜色
hi Number cterm=NONE ctermfg=62 ctermbg=000
" 修改常量的颜色
hi Constant cterm=NONE ctermfg=147 ctermbg=000
" 修改声明的颜色
hi Statement cterm=NONE ctermfg=153 ctermbg=000
" 修改关键字的颜色
hi Identifier cterm=NONE ctermfg=183 ctermbg=000
" 修改匹配括号的颜色
hi MatchParen cterm=NONE ctermfg=202 ctermbg=000
" 修改行号的颜色
hi LineNr cterm=NONE ctermfg=177 ctermbg=000
" 修改当前行号的颜色
hi CursorLineNr cterm=NONE ctermfg=214 ctermbg=000
" 修改窗口边框的颜色
hi VertSplit cterm=NONE ctermfg=236 ctermbg=238
" 修改光标所在行的颜色
hi CursorLine cterm=NONE ctermbg=104 ctermfg=15
" 设置自动补全窗口的颜色
hi Pmenu cterm=NONE ctermfg=7 ctermbg=60
hi PmenuSel cterm=NONE ctermfg=15 ctermbg=103
" some
hi NonText cterm=NONE ctermfg=000 ctermbg=000
hi Normal cterm=NONE ctermfg=255 ctermbg=000
hi SignColumn cterm=NONE ctermfg=000 ctermbg=000

" -------------------------------------------------------------------
"
" tabline
"
" -------------------------------------------------------------------
" 定义颜色
hi TabLine cterm=None ctermfg=147 ctermbg=239
hi TabLineSel cterm=None ctermfg=015 ctermbg=237
hi TabLineFill cterm=None ctermfg=217 ctermbg=239

set tabline=%!MyTabLine()
function MyTabLine()
    let s = ''
    for t in range(tabpagenr('$'))
        if t + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        let s .= '%' . (t + 1) . 'T'
        let s .= ' '
        let s .= t + 1 . ' '
        let n = ''
        let m = 0
        let bc = len(tabpagebuflist(t + 1))
        for b in tabpagebuflist(t + 1)
            if getbufvar( b, "&buftype" ) == 'help'
                let n .= '[H]' . fnamemodify( bufname(b), ':t:s/.txt$//' )
            elseif getbufvar( b, "&buftype" ) == 'quickfix'
                let n .= '[Q]'
            else
                let n .= pathshorten(bufname(b))
            endif
            if getbufvar( b, "&modified" )
                let m += 1
            endif
            if bc > 1
                let n .= ' '
            endif
            let bc -= 1
        endfor
        if m > 0
            let s .= '[' . m . '+]'
        endif
        if t + 1 == tabpagenr()
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        if n == ''
            let s.= '[No Name]'
        else
            let s .= n
        endif
        let s .= ' '
    endfor
    let s .= '%#TabLineFill#%T'
    if tabpagenr('$') > 1
        let s .= '%=%#TabLineFill#'
    endif
    return s
endfunction

" -------------------------------------------------------------------
"
" statusline
"
" -------------------------------------------------------------------
" 设置状态栏在倒数第二行
set laststatus=2
" 设置状态栏 
set statusline=%<%1*[B-%n]%*
set statusline+=%2*[TOT:%{Buf_total_num()}]%*
set statusline+=%3*\ %{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}\ %*
set statusline+=%4*\ %F\ %*
set statusline+=%5*\ %{File_size(@%)}\ %*
set statusline+=%6*\ %{NearestMethodOrFunction()}
set statusline+=%=%7*\ %m%r%y\ \|\%*
set statusline+=%8*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(row:%l/%L,col:%c%V%)\ %*
set statusline+=%9*\ %P\ %*

hi User1 cterm=None ctermfg=232 ctermbg=214
hi User2 cterm=None ctermfg=214 ctermbg=241
hi User3 cterm=None ctermfg=193 ctermbg=239
hi User4 cterm=None ctermfg=147 ctermbg=237
hi User5 cterm=None ctermfg=251 ctermbg=238
hi User6 cterm=None ctermfg=153 ctermbg=236
hi User7 cterm=None ctermfg=246 ctermbg=237
hi User8 cterm=None ctermfg=250 ctermbg=238
hi User9 cterm=None ctermfg=249 ctermbg=240

function! Buf_total_num()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction
function! File_size(f)
    let l:size = getfsize(expand(a:f))
    if l:size == 0 || l:size == -1 || l:size == -2
        return ''
    endif
    if l:size < 1024
        return l:size.' bytes'
    elseif l:size < 1024*1024
        return printf('%.1f', l:size/1024.0).'k'
    elseif l:size < 1024*1024*1024
        return printf('%.1f', l:size/1024.0/1024.0) . 'm'
    else
        return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
    endif
endfunction

" lightline
let g:lightline = {
  \ 'active': {
  \   'left': [
  \     [ 'mode', 'paste' ],
  \     [ 'ctrlpmark', 'git', 'diagnostic', 'cocstatus', 'filename', 'method' ]
  \   ],
  \   'right':[
  \     [ 'filetype', 'fileencoding', 'lineinfo', 'percent' ],
  \     [ 'blame' ]
  \   ],
  \ },
  \ 'component_function': {
  \   'blame': 'LightlineGitBlame',
  \ }
\ }

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

" -------------------------------------------------------------------
"
" plugin
"
" -------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" markdown预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" markdown表格模板插件
Plug 'dhruvasagar/vim-table-mode'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf.vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" vista.vim
Plug 'liuchengxu/vista.vim'

" vim-terminal-help
Plug 'skywind3000/vim-terminal-help'

" vim-snippets代码片段库
" Plug 'honza/vim-snippets'

call plug#end()

" -------------------------------------------------------------------
"
" pluginSetting
"
" -------------------------------------------------------------------
" coc.nvim
" -------------------------------------------------------------------
" 自动加载coc插件
let g:coc_global_extensions = [
		\ 'coc-git',
		\ 'coc-html',
		\ 'coc-css',
		\ 'coc-tsserver',
		\ 'coc-vetur',
		\ 'coc-xml',
		\ 'coc-yaml',
		\ 'coc-json',
		\ 'coc-emmet',
		\ 'coc-eslint',
		\ 'coc-vimlsp',
		\ 'coc-snippets',
		\ 'coc-prettier']

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=160

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Highlight the symbol and its references when holding the cursor.
" 高亮相同的单词
autocmd CursorHold * silent call CocActionAsync('highlight')


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" 按下车键选中补全的代码不会默认换行
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" GoTo code navigation.
" 跳转到函数所在的位置
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)

" 修改默认设置为按下ctrl+o调用自动补全（nvim）
inoremap <silent><expr> <C-o> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" 跳转到代码有误的地方
nmap <silent> <LEADER>gr <Plug>(coc-diagnostic-prev)

" Use <LEADER>k to show documentation in preview window.
nnoremap <silent> <LEADER>k :call <SID>show_documentation()<CR>


" fzf
" -------------------------------------------------------------------
" 搜索文件
noremap <silent> <LEADER>ff :Files<CR>
" 搜索标记
noremap <silent> <LEADER>fm :Marks<CR>
" 搜索历史文件
noremap <silent> <LEADER>fh :History<CR>
" 搜索Buffers
noremap <silent> <LEADER>fb :Buffers<CR>
" 搜索历史命令
noremap <silent> <LEADER>sh :History:<CR>

" Default fzf layout
" - Popup window
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }

let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

" Override statusline as you like
function! s:fzf_statusline()
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()


" netrw
" -------------------------------------------------------------------
noremap <LEADER>nn :Lexplore<CR>

let g:netrw_hide = 1
let g:netrw_altv = 1
let g:netrw_alto = 0
let g:netrw_banner = 0
let g:netrw_winsize = 20
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3


" vista.vim
" -------------------------------------------------------------------
noremap <silent> <LEADER>vv :Vista!!<CR>
noremap <silent> <LEADER>vf :Vista finder<CR>

let g:vista_cursor_delay = 000
let g:vista_disable_statusline = 1
let g:vista_sidebar_width = 40
let g:vista_highlight_whole_line = 1
let g:vista_fzf_preview = ['right:60%']
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

" By default vista.vim never run if you don't call it explicitly.
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'method' ] ]
      \ },
      \ 'component_function': {
      \   'method': 'NearestMethodOrFunction'
      \ },
      \ }


" vim-table-mode
" -------------------------------------------------------------------
map <LEADER>tm :TableModeToggle<CR>

function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'


" markdown-preview.nvim
" -------------------------------------------------------------------
nmap <LEADER>mp <Plug>MarkdownPreview
nmap <LEADER>ps <Plug>MarkdownPreviewStop

" 自动启动(默认为0，改为1为开启自动启动)
let g:mkdp_auto_start = 0
" 自动刷新(默认为0,改为1为开启自动刷新)
let g:mkdp_refresh_slow = 1
" 设置的预览浏览器
let g:mkdp_browser = 'chromium'

" source markdown-snippets.vim
" -------------------------------------------------------------------
source ~/.config/nvim/markdown-snippets.vim

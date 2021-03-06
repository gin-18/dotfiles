" map-part
" ----------------------------------------
map Q :q<CR>
map s :w<CR>
map S :wq<CR>

" 打开一个新的标签页
map nt :tabe<CR>

" 切换到下一个标签页
map <Tab>l gt

" 切换到上一个标签页
map <Tab>h gT

" 切换分屏
map <M-w>k <C-w>k
map <M-w>j <C-w>j
map <M-w>h <C-w>h
map <M-w>l <C-w>l

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

" noremap-part
" ----------------------------------------
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

" inoremapp-part
" ----------------------------------------
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i

" netrw-mapping
" ----------------------------------------
noremap <LEADER>nn :Lexplore<CR>

" vimTableMode-mapping
" ----------------------------------------
map <LEADER>tm :TableModeToggle<CR>

" fzf-mapping
" ----------------------------------------
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

" markdownPreview-mapping
" ----------------------------------------
nmap <LEADER>mp <Plug>MarkdownPreview
nmap <LEADER>ps <Plug>MarkdownPreviewStop

" vista-mapping
" ----------------------------------------
noremap <silent> <LEADER>vv :Vista!!<CR>
noremap <silent> <LEADER>vf :Vista finder<CR>

" coc-mapping
" ----------------------------------------

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

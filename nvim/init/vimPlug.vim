" plug-part
" ----------------------------------------
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

" vim-snippets代码片段库
" Plug 'honza/vim-snippets'

call plug#end()

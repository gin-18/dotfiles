" 状态栏
" ----------------------------------------
" "设置状态栏在倒数第二行
set laststatus=2
" "设置状态栏 
set statusline=%<%1*[B-%n]%*
" TOT is an abbreviation for total
set statusline+=%2*[TOT:%{Buf_total_num()}]%*
set statusline+=%3*\ %{get(g:,'coc_git_status','')}%{get(b:,'coc_git_status','')}%{get(b:,'coc_git_blame','')}\ %*
set statusline+=%4*\ %F\ %*
set statusline+=%5*\ %{File_size(@%)}\ %*
set statusline+=%6*\ %{NearestMethodOrFunction()}
set statusline+=%=%7*\ %m%r%y\ \|\%*
set statusline+=%8*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(row:%l/%L,col:%c%V%)\ %*
set statusline+=%9*\ %P\ %*

" default bg for statusline is 236 in space-vim-dark
hi User1 cterm=None ctermfg=232 ctermbg=179
hi User2 cterm=None ctermfg=214 ctermbg=241
hi User3 cterm=None ctermfg=146 ctermbg=239
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

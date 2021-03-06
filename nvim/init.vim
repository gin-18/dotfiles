" Auto load for first time uses
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" source coc.vim
source ~/.config/nvim/init/coc.vim

" source fzf.vim
source ~/.config/nvim/init/fzf.vim

" source netrw.vim
source ~/.config/nvim/init/netrw.vim

" source vista.vim
source ~/.config/nvim/init/vista.vim

" source viminit.vim
source ~/.config/nvim/init/viminit.vim

" source tabline.vim
source ~/.config/nvim/init/tabline.vim

" source vimPlug.vim
source ~/.config/nvim/init/vimPlug.vim

" source colorSet.vim
source ~/.config/nvim/init/colorSet.vim

"source statusline.vim
source ~/.config/nvim/init/statusline.vim

" source vimTableMode.vim
source ~/.config/nvim/init/vimTableMode.vim

" source markdown-snippets.vim
source ~/.config/nvim/markdown-snippets.vim

" source markdownPreview.vim
source ~/.config/nvim/init/markdownPreview.vim

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi \
--height 40% \
--layout reverse \
--preview 'tree -C {} | head -160'
"

# select directory by default
export FZF_DEFAULT_COMMAND="
find $HOME \( -name node_modules -o -name .git \) -prune -o -type d
"

export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || bat --color=always {} || tree -C {}) 2> /dev/null | head -160'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -160'"
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

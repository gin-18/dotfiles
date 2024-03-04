# fzf
export FZF_DEFAULT_COMMAND='
ag -l -U --hidden --ignore-dir node_modules --ignore-dir .git . /home
'

export FZF_COMPLETION_TRIGGER='\'

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8
--preview 'bat --style=numbers --color=always --line-range :500 {}'
"

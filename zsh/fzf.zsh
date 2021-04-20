# fzf
export FZF_DEFAULT_COMMAND='
fd --type f --hidden --follow --exclude={.git,node_modules} .
'

export FZF_COMPLETION_TRIGGER='\'

export FZF_DEFAULT_OPTS='
--height 50% 
--layout=reverse 
'

# export FZF_DEFAULT_OPTS='
# --height 50% 
# --layout=reverse 
# --preview "[[ $(file {}) =~ binary ]] && echo {} is a binary file || (bat --theme=gruvbox --color=always {} || highlight -0 ansi -l {} || cat {}) 2> /dev/null | head -500"
# '

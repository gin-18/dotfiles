# fzf
export FZF_DEFAULT_COMMAND='
ag -l -U --hidden . /home
'

export FZF_COMPLETION_TRIGGER='\'

export FZF_DEFAULT_OPTS='
--height 50% 
--layout=reverse 
--preview "bat --color=always --line-range :500 {}"
'

# export FZF_DEFAULT_OPTS='
# --height 50% 
# --layout=reverse 
# --preview "[[ $(file {}) =~ binary ]] && echo {} is a binary file || (bat --theme=gruvbox --color=always {} || highlight -0 ansi -l {} || cat {}) 2> /dev/null | head -500"
# '

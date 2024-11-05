if [ "$CATPPUCCIN_FLAVOR" = "frappe" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-frappe.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "latte" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-latte.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "macchiato" ]; then
    source ${0:A:h}/catppuccin-flavors/catppuccin-macchiato.zsh
else
    source ${0:A:h}/catppuccin-flavors/catppuccin-mocha.zsh
fi


PROMPT="%(?:%F{${catppuccin_green}}%1{➜%} :%F{${catppuccin_red}}%1{➜%} )"
PROMPT+="%F{${catppuccin_pink}}%n%  "
PROMPT+="%F{${catppuccin_blue}}%c%{$reset_color%} "

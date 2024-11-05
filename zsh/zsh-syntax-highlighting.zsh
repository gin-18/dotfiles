if [ "$CATPPUCCIN_FLAVOR" = "frappe" ]; then
    source ${0:A:h}/catppuccin-zsh-syntax-highlighting/catppuccin_frappe-zsh-syntax-highlighting.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "latte" ]; then
    source ${0:A:h}/catppuccin-zsh-syntax-highlighting/catppuccin_latte-zsh-syntax-highlighting.zsh
elif [ "$CATPPUCCIN_FLAVOR" = "macchiato" ]; then
    source ${0:A:h}/catppuccin-zsh-syntax-highlighting/catppuccin_macchiato-zsh-syntax-highlighting.zsh
else
    source ${0:A:h}/catppuccin-zsh-syntax-highlighting/catppuccin_mocha-zsh-syntax-highlighting.zsh
fi

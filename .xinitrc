# qt5ct (qt5 setting)
export QT_QPA_PLATFORMTHEME=qt5ct

# load xresources file
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# star dwm
exec dwm

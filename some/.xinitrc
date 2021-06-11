# set xrandr
# xrandr --newmode "2160x1440_60.00"  263.50  2160 2320 2552 2944  1440 1443 1453 1493 -hsync +vsync
# xrandr --addmode Virtual-1 "2160x1440_60.00"
# xrandr --output Virtual-1 --mode "2160x1440_60.00"
# xrandr --output eDP1 --prrimary

# start i3
# exec i3

# qt5ct (qt5 setting)
export QT_QPA_PLATFORMTHEME=qt5ct

# star dwm
exec dwm


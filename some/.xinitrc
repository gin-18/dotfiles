# set xrandr
# xrandr --newmode "2160x1440_60.00"  263.50  2160 2320 2552 2944  1440 1443 1453 1493 -hsync +vsync
# xrandr --addmode Virtual-1 "2160x1440_60.00"
# xrandr --output Virtual-1 --mode "2160x1440_60.00"
# xrandr --output eDP1 --prrimary

# set xinput
# xinput set-prop 11 345 1
xinput set-prop 11 "libinput Tapping Enabled" 1

# feh --randomize --bg-fill ~/some/pictures/My-千千/*

# fcitx5
fcitx5 &

# start i3
exec i3

# star dwm
# exec dwm


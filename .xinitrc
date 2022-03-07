#Auto starting programs/scripts

# Restoring pywal
wal -R &

# Restoring LiveWallpaper
wallpaper-wrap &

# Statusbar configuration
dwmblocks &

#Notification server
dunst &

# Compositior
picom -f & 

# Setting up correct resolution
#xrandr --output DP-4 --mode 1920x1080 -r 143.98 &
xrandr --output HDMI-0 --mode 1920x1080 -r 143.98 &

# Keyboard Shortcuts
xbindkeys &

# Unbinding ipv6 at boot
sudo systemctl restart systemd-sysctl.service

# Starting Backup & Sync
syncthing -no-browser &

# Loading Xresourcecs
[[ -f ~/.cache/wal/Xresources ]] && xrdb -merge ~/.cache/wal/Xresources

# Executing Window Manager
exec dwm


#Auto starting programs/scripts

# Restoring Wallpaper
nitrogen --restore

# Statusbar configuration
dwmblocks &

#Notification server
dunst &

# Compositior
picom -f & 

# Setting up correct resolution
xrandr --output DP-2 --mode 1920x1080 -r 143.98 &
#xrandr --output HDMI-0 --mode 1920x1080 -r 143.98 &
#xrandr --output DP-0 --off --output DP-1 --off --output DP-2 --mode 1920x1080 -r 143.98 --pos 0x0 --rotate normal --output DP-3 --off --output HDMI-0 --mode 1920x1080 --pos 1928x0 --rotate normal --output DP-4 --off --output DP-5 --off

# Keyboard Shortcuts
xbindkeys &

# Noise Suppression
rnnoise activate &

# Starting Backup & Sync
syncthing --no-browser &

# Unbinding ipv6 at boot
sudo systemctl restart systemd-sysctl.service &

# Loading Xresourcecs
[[ -f ~/.cache/wal/Xresources ]] && xrdb -merge ~/.cache/wal/Xresources &

# Restoring pywal
wal -R && clear

# Executing Window Manager
exec dwm



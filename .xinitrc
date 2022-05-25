#Auto starting programs/scripts

# Restoring Wallpaper
nitrogen --restore

# Statusbar configuration
dwmblocks &

#Notification server
dunst &

# Compositior
picom -f & 

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

# dwm Loop
while true; do
    dwm >/dev/null 2>&1
done

# Executing Window Manager
exec dwm

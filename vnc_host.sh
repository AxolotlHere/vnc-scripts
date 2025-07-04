hyprctl output create headless Virtual-1
hyprctl reload
cd ~/wayvnc
WAYLAND_DISPLAY=wayland-1 ./build/wayvnc --output Virtual-1 0.0.0.0
echo "Hello world"

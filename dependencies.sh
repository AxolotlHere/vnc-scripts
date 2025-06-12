sudo pacman -S base-devel libglvnd libxkbcommon pixman gnutls jansson
git clone https://github.com/any1/wayvnc.git
git clone https://github.com/any1/aml.git

mkdir wayvnc/subprojects
cd wayvnc/subprojects
ln -s ../../neatvnc .
ln -s ../../aml .
cd -

mkdir neatvnc/subprojects
cd neatvnc/subprojects
ln -s ../../aml .
cd -

#Additional wlroot dependency for gpu rendered remote DE sharing
git clone https://github.com/swaywm/wlroots.git
cd wlroots
meson build/
ninja -C build/
sudo ninja -C build/ install
cd -

echo "monitor=Virtual-1,1280x720@60,1920x0,1" >> ~/.config/hypr/hyprland.conf

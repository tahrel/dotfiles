
echo Hello Friend 

echo Installing Xfce 

sudo pacman -Syyu xorg-x11-server-Xorg xorg-x11-xinit network-manager-applet xorg-x11-drv-libinput mesa-dri-drivers xfce4-panel xfce4-datetime-plugin xfce4-session xfce4-settings xfconf xfdesktop xfce4-appfinder xfce4-power-manager xfce4-pulseaudio-plugin pipewire pipewire-pulseaudio gvfs lightdm-gtk xfwm4 xdg-user-dirs xfce4-panel-profiles xfce4-terminal

echo Installing Necessity

sudo pacman -S --needed git base-devel flameshot zsh

echo Installing YaY

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

echo Finishing

sudo systemctl set-default graphical.target

echo Thank you now you can reboot your pc

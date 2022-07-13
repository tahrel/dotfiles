
echo Hello Friend 

echo Installing Xfce 

sudo dnf update -y ; sudo dnf install xorg-x11-server-Xorg xorg-x11-xinit network-manager-applet xorg-x11-drv-libinput mesa-dri-drivers xfce4-panel xfce4-datetime-plugin xfce4-session xfce4-settings xfconf xfdesktop xfce4-appfinder xfce4-power-manager xfce4-pulseaudio-plugin pipewire pipewire-pulseaudio gvfs lightdm-gtk xfwm4 xdg-user-dirs xfce4-panel-profiles -y


echo Installing Terminal

sudo dnf install terminal.rpm -y


echo Installing Recessity

sudo dnf install flameshot zsh neovim dnf-plugins-core stacer -y

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ -y

sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/ -y

sudo dnf install brave-browser curl wget -y

sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin

sudo dnf groupupdate sound-and-video

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf groupupdate core



echo Wait...

sudo -i

hostnamectl set-hostname "tahrel"

systemctl set-default graphical.target

dnf clean dbcache

dnf  clean all

echo Thank you now you can reboot your pc

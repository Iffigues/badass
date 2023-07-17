    sudo apt-get install -y git
    sudo apt-get install -y vim
    sudo apt-get install -y curl
    sudo apt-get install -y whireshark
    sudo apt-get install -y Python3
    sudo apt install python3-pip python3-pyqt5 python3-pyqt5.qtsvg python3-pyqt5.qtwebsockets qemu qemu-kvm qemu-utils libvirt-clients libvirt-daemon-system virtinst wireshark xtightvncviewer apt-transport-https ca-certificates curl gnupg2 software-properties-common -y
    sudo pip3 install gns3-server gns3-gui
    sudo systemctl disable gns3.service
    sudo usermod -aG kvm,libvirt,docker,ubridge,wireshark "$USER"
    echo "gns3 installed."
    gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'gns3.desktop', 'wireshark.desktop', 'org.gnome.Terminal.desktop']"
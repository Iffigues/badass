    sudo add-apt-repository -y ppa:gns3/ppa
    sudo apt-get update
    DEBIAN_FRONTEND=noninteractive sudo apt-get install -y --no-install-recommends gdm3 ubuntu-desktop-minimal
    echo "display manager and desktop installed."
    
    cd /tmp
    curl https://raw.githubusercontent.com/GNS3/gns3-server/master/scripts/remote-install.sh > gns3-remote-install.sh
    sudo bash gns3-remote-install.sh
    echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
    DEBIAN_FRONTEND=noninteractive sudo apt-get install -y gns3-gui
    sudo systemctl disable gns3.service
    sudo usermod -aG kvm,libvirt,docker,ubridge,wireshark "$USER"
    echo "gns3 installed."
    gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'gns3.desktop', 'wireshark.desktop', 'org.gnome.Terminal.desktop']"
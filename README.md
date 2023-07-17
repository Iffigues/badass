# badass
badass
Bgp At Doors of Autonomous Systems is Simple

Summary: This document is a subject on network administration.

The purpose of this project is to expand on the knowledge you have gained through NetPractice. You will have to simulate a network and configure it using GNS3 with docker
images .
BGP EVPN is based on BGP (RFC 4271) and its extensions MP-BGP (RFC4760).
BGP is the routing protocol that drives the Internet. Through MP-BGP extensions, it
can be used to carry reachability information (NLRI) for various protocols (IPv4, IPv6,
L3 VPN and in this case, EVPN). EVPN is a special family for publishing information
about MAC addresses and the end devices that access them..


Import 42-debian image in virtualbox
user42:user42

install python3/gns3/docker:
sudo apt-get install python3
sudo add-apt-repository ppa:gns3/ppa
sudo apt-get update
sudo apt-get install gns3-gui
//in prompt sey yes to all
sudo apt-get install vim
sudo apt-get install docker
sudo usermod -aG docker ${USER}

sudo usermod -aG ubridge libvirt kvm wireshark ${USER}
//Restart the machine


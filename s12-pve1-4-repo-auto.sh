sed -i 's/bridge-fd 0/&\n\tbridge-vlan-aware yes\n\tbridge-vids 100-199\n/' /etc/network/interfaces
ifreload -a
sed -i 's/.*/#&/' /etc/apt/sources.list.d/*.list
echo deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription > /etc/apt/sources.list.d/pve-no-subscription.list
apt-get update
#apt -y install proxmox-auto-install-assistant

exit 0
sed -i 's/bridge-fd 0/&\n\tbridge-vlan-aware yes\n\tbridge-vids 100-199\n/' /etc/network/interfaces
ifreload -a

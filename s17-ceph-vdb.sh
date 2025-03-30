for i in 1 2 3 4; do qm set $((500+i)) -virtio1 local-zfs:100;done

qm clone 900 611 --name cloud611
qm set 611 -net0 virtio,bridge=vmbr0 --ipconfig0 ip=dhcp --ciupgrade 0 --ciuser root --sshkeys /root/.ssh/id_rsa.pub --cipassword ertyerty
qm start 611

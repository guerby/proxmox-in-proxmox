qm clone 900 612 --name cloud612
qm set 612 -net0 virtio,bridge=vmbr0 --ipconfig0 ip=192.168.73.222/24,gw=192.168.73.254 --ciupgrade 0 --ciuser root --sshkeys /root/.ssh/id_rsa.pub --cipassword ertyerty
qm start 612

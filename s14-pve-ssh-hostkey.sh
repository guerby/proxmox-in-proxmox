for i in 1 2 3 4; do ssh 192.168.73.20$i "echo StrictHostKeyChecking accept-new >> .ssh/config"; done

mv /root/.ssh/known_hosts /root/.ssh/known_hosts-save
for i in 1 2 3 4; do ssh -o StrictHostKeyChecking=accept-new 192.168.73.20${i} uptime; done

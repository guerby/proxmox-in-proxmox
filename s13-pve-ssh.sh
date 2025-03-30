for i in 1 2 3 4; do scp s12-pve1-4-repo-auto.sh 192.168.73.20$i:/root/ ;done
for i in 1 2 3 4; do ssh 192.168.73.20$i bash s12-pve1-4-repo-auto.sh & done
for i in 2 3 4; do ssh 192.168.73.20$i cat /root/.ssh/id_rsa.pub | ssh 192.168.73.201 'cat >> /root/.ssh/authorized_keys'; done

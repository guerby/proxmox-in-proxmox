for i in 1 2 3 4; do ssh 192.168.73.20$i 'yes | pveceph install --repository no-subscription' & done
wait $(jobs -p)
ssh 192.168.73.201 pveceph init
for i in 1 2 3; do ssh 192.168.73.20$i pveceph mon create; done
sleep 5
for i in 1 2 3 4; do ssh 192.168.73.20$i pveceph osd create /dev/vdb; done
sleep 5
ssh 192.168.73.201 pveceph pool create ceph1 --add_storages --pg_autoscale_mode off

cd /var/lib/vz/template/iso && wget https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-genericcloud-amd64.qcow2
qm create 900 --memory 2048 --net0 virtio,bridge=vmbr0 --name debian12template --ide2 ceph1:cloudinit --agent 1 --ostype l26 --cores 2
qm importdisk 900 /var/lib/vz/template/iso/debian-12-genericcloud-amd64.qcow2 ceph1
qm set 900 --scsihw virtio-scsi-single --scsi0 ceph1:vm-900-disk-0,discard=on,ssd=1,iothread=1
qm set 900 --boot c --bootdisk scsi0
qm template 900

for i in 1 2; do
  VMID=$((600+i))
  qm create $VMID \
          --name pbs-${i} \
          --memory  2048 \
          --cdrom local:iso/pbs-${i}.iso \
          --net0 virtio=2E:B2:E4:C5:41:0${i},bridge=vmbr0  \
          --cores 2 \
          --cpu host \
          --machine q35 \
          --ostype l26 \
          --scsihw virtio-scsi-pci \
          --virtio0 ceph1:10
done

for i in 1 2 3 4; do
  VMID=$((500+i));
  qm create $VMID \
        --name pve-${i} \
        --memory 8192 \
        --cdrom local:iso/pve-${i}.iso \
        --net0 virtio=2E:B2:E4:C5:40:0${i},bridge=vmbr0,tag=1,trunks='100;101;102;103'  \
        --cores 4 \
        --cpu host \
        --machine q35 \
        --ostype l26 \
        --scsihw virtio-scsi-pci \
        --virtio0 local-zfs:40
  qm start $VMID;
done

exit 0
for i in 1 2 3 4; do
  VMID=$((500+i));
  qm stop $VMID
  qm wait $VMID
  qm destroy $VMID --purge --destroy-unreferenced-disks 1
done

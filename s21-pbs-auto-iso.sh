for i in 1 2; do
  proxmox-auto-install-assistant prepare-iso --fetch-from iso --answer-file=answer-pbs-${i}.toml --output pbs-${i}.iso proxmox-backup-server_3.3-1.iso;
done

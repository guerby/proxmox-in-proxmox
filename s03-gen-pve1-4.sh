for i in 1 2 3 4; do
  proxmox-auto-install-assistant prepare-iso --fetch-from iso --answer-file=answer-${i}.toml --output pve-${i}.iso proxmox-ve_8.3-1.iso;
done

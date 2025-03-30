for i in 1 2 3 4; do cat > answer-${i}.toml << EOF
[global]
keyboard = "fr"
country = "fr"
fqdn = "pve-${i}.local"
mailto = "system-admin@cnrs.fr"
timezone = "Europe/Paris"
root_password = "myPassword"
root_ssh_keys = [
"$(cat /root/.ssh/id_rsa.pub)"
]

[network]
source = "from-answer"
cidr = "192.168.73.20${i}/24"
dns = "192.168.73.254"
gateway = "192.168.73.254"
filter.ID_NET_NAME_MAC="*"

[disk-setup]
filesystem = "zfs"
zfs.raid = "raid0"
disk_list = ["vda"]
EOF
done

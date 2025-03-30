for i in 1 2; do cat > answer-pbs-${i}.toml << EOF
[global]
keyboard = "fr"
country = "fr"
fqdn = "pbs-${i}.local"
mailto = "system-admin@example.org"
timezone = "Europe/Paris"
root_password = "myPassword"
root_ssh_keys = [
"$(cat /root/.ssh/id_rsa.pub)"
]
[network]
source = "from-answer"
cidr = "192.168.73.21${i}/24"
dns = "192.168.73.254"
gateway = "192.168.73.254"
filter.ID_NET_NAME_MAC="*"

[disk-setup]
filesystem = "ext4"
disk_list = ["vda"]
EOF
done

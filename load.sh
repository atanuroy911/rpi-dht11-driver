#!/bin/sh
module="dht11km"
device="dht11km"

rm -f /dev/${device}
insmod ./${module}.ko

major=$(awk -v mod="${module}" '$2==mod{print $1}' /proc/devices)
mknod /dev/${device} c ${major} 0
chown root:root /dev/${device}
chmod 0644 /dev/${device}

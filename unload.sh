#!/bin/sh
module="dht11km"
device="dht11km"

rm -f /dev/${device}
rmmod ${module} || true

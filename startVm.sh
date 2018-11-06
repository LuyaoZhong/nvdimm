#!/bin/bash

RAM_SIZE=4G
N=2
MAX_SIZE=8G
MEM_PATH=/dev/dax0.0
#MEM_PATH=/mnt/mem
NVDIMM_SIZE=4094M


qemu-system-x86_64 \
-smp 16,cores=16,threads=1,sockets=1 \
-machine accel=kvm,nvdimm,nvdimm-persistence=cpu \
-m $RAM_SIZE,slots=$N,maxmem=$MAX_SIZE \
-object memory-backend-file,id=mem1,share=on,mem-path=$MEM_PATH,size=$NVDIMM_SIZE,pmem=on,align=2M \
-device nvdimm,id=nvdimm1,memdev=mem1,label-size=2M,unarmed=off \
-drive file=/home/luyaozho/nvdimm/ubuntu-cloud-server.qcow2,format=qcow2 \
-net nic \
-net tap,ifname=tap0,script=no,downscript=no \
-nographic

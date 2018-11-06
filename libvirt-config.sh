#!/bin/bash

cd /usr/lib/x86_64-linux-gnu
sudo rm -rf libvirt*
sudo cp /usr/lib/libvirt*4008* /usr/lib/x86_64-linux-gnu/
sudo cp /usr/lib/libvirt*.la /usr/lib/x86_64-linux-gnu/
sudo ln -s libvirt.so.0.4008.0 libvirt.so
sudo ln -s libvirt.so.0.4008.0 libvirt.so.0
sudo ln -s libvirt-qemu.so.0.4008.0 libvirt-qemu.so
sudo ln -s libvirt-qemu.so.0.4008.0 libvirt-qemu.so.0
sudo ln -s libvirt-lxc.so.0.4008.0 libvirt-lxc.so
sudo ln -s libvirt-lxc.so.0.4008.0 libvirt-lxc.so.0
sudo ln -s libvirt-admin.so.0.4008.0 libvirt-admin.so
sudo ln -s libvirt-admin.so.0.4008.0 libvirt-admin.so.0

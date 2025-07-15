#!/bin/bash
# Download required ARM64 images script

set -e

IMAGES_DIR="/media/pi/ext_drive_1TB/vm-storage"

echo "Creating images directory on external USB drive..."
sudo mkdir -p "$IMAGES_DIR"

echo "Downloading OPNsense ARM64 VM image..."
cd "$IMAGES_DIR"
sudo wget -O opnsense-arm64.qcow2.bz2 "https://github.com/maurice-w/opnsense-vm-images/releases/download/25.1/OPNsense-25.1-ufs-efi-vm-aarch64.qcow2.bz2"
sudo bunzip2 opnsense-arm64.qcow2.bz2

echo "Downloading Ubuntu Server 24.04 ARM64 ISO..."
sudo wget -O ubuntu-server-arm64.iso "https://cdimage.ubuntu.com/releases/24.04/release/ubuntu-24.04.2-live-server-arm64.iso"

echo "Setting permissions..."
sudo chown -R libvirt-qemu:libvirt-qemu "$IMAGES_DIR"

echo "ARM64 images download completed!"
echo "OPNsense: $IMAGES_DIR/opnsense-arm64.qcow2"
echo "Ubuntu: $IMAGES_DIR/ubuntu-server-arm64.iso"

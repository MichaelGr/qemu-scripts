# you need to set
# your-kernel-dir
# your-root-disk-file
qemu-system-x86_64 -M pc -m 512M -smp 2 \
-enable-kvm -cpu host \
-kernel your-kernel-dir/arch/x86/boot/bzImage \
-append "root=/dev/vda console=ttyS0,115200n8" \
-drive file=your-root-disk-file,if=virtio \
-net nic,model=rtl8139 \
-nographic

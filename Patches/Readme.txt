Building Tips
Pixel Fold felix - Kernel Metadata Patch

Files:
  0001-kernel-metadata.patch
  apply-metadata-patch.sh

Changes:
  1. Adjust setlocalversion output.
  2. Fix Kernel Release to:
     -android14-11-g9dd05ae3a1de-ab16261587
  3. Fix kernel build timestamp.
  4. Fix compiler identity fields.

Only three source files are modified.

Usage:
  Place the patch in the source root's patches/ directory.
  Place the script in the source root's scripts/ directory.
  Run:
    bash scripts/apply-metadata-patch.sh

Use only with a compatible source revision.
Back up local modifications before applying.

To spoof the /proc/config.gz with the stock config,

Make sure you are on the stock ROM and using stock kernel.
Use adb shell or root shell to pull your stock /proc/config.gz from your device to PC.
Decompress it using gunzip or whatever tools, then copy it to $KERNEL_ROOT/arch/arm64/configs/stock_defconfig
Open file $KERNEL_ROOT/kernel/Makefile.
Look for line $(obj)/config_data: $(KCONFIG_CONFIG) FORCE, and replace it with $(obj)/config_data: arch/arm64/configs/stock_defconfig FORCE

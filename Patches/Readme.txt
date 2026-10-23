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
